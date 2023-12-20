#r "C:\Users\RJanzen\scoop\apps\workspacer\current\workspacer.Shared.dll"
#r "C:\Users\RJanzen\scoop\apps\workspacer\current\plugins\workspacer.Bar\workspacer.Bar.dll"
#r "C:\Users\RJanzen\scoop\apps\workspacer\current\plugins\workspacer.ActionMenu\workspacer.ActionMenu.dll"
#r "C:\Users\RJanzen\scoop\apps\workspacer\current\plugins\workspacer.FocusIndicator\workspacer.FocusIndicator.dll"
#r "C:\Users\RJanzen\scoop\apps\workspacer\current\plugins\workspacer.Gap\workspacer.Gap.dll"
#r "C:\Users\RJanzen\scoop\apps\workspacer\current\plugins\workspacer.TitleBar\workspacer.TitleBar.dll"

using System;
using workspacer;
using workspacer.Bar;
using workspacer.Bar.Widgets;
using workspacer.ActionMenu;
using workspacer.FocusIndicator;
using workspacer.Gap;
using workspacer.TitleBar;


Action<IConfigContext> doConfig = (context) =>
{
  var activeColor = new Color(24, 18, 43);
  // var green = new Color(158, 206, 106);
  // var green = new Color(152, 151, 26);
  var green = new Color(0, 91, 65);
  // var teal = new Color(115, 218, 202);
  // var teal = new Color(215, 153, 33); // actual yellow
  var teal = new Color(0, 129, 112); // actual green teal
  var gap = 15;
  // Uncomment to switch update branch (or to disable updates)
  context.Branch = Branch.None;

  var gapPlugin = context.AddGap(new GapPluginConfig() { InnerGap = gap, OuterGap = gap / 2, Delta = gap / 2 });

  context.AddBar(new BarPluginConfig()
      {
        BarTitle = "workspacer.Bar",
        FontSize = 14,
        FontName = "JetBrainsMono NF",
        // DefaultWidgetForeground = new Color(198, 224, 255),
        // DefaultWidgetForeground = new Color(168, 153, 132),
        DefaultWidgetForeground = green,
        // DefaultWidgetBackground = new Color(26, 27, 38), 
        // DefaultWidgetBackground = new Color(40, 40, 40),
        DefaultWidgetBackground = new Color(15, 15, 15),
        // DefaultWidgetBackground = new Color(35, 45, 63),
        Background = Color.Black,
        LeftWidgets = () => new IBarWidget[] { 
          new WorkspaceWidget() {
            WorkspaceHasFocusColor = teal,
            WorkspaceIndicatingBackColor = green
          },
          // new TextWidget("| "),
          // new TitleWidget() 
        },
        RightWidgets = () => new IBarWidget[] { 
          new TimeWidget(1000,"hh:mm:ss, dd-MM-yyyy"),
          new TextWidget("| Battery:"),
          new BatteryWidget() {
            HighChargeColor = new Color(152, 151, 26),
            // MedChargeColor = new Color(224, 175, 104),
            MedChargeColor = new Color(215, 153, 33),
            // LowChargeColor = new Color(247, 118, 142),
            LowChargeColor = new Color(204, 36, 29),
          },
          new TextWidget("|"),
          new ActiveLayoutWidget() },
      });
  context.AddFocusIndicator(new FocusIndicatorPluginConfig() { BorderColor = green });
  var actionMenu = context.AddActionMenu();

  context.WorkspaceContainer.CreateWorkspaces("chat", "www", "dev", "org", "misc");
  context.CanMinimizeWindows = true; // false by default

  /* Default layouts */
  Func<ILayoutEngine[]> defaultLayouts = () => new ILayoutEngine[]
  {
    new TallLayoutEngine(),
        new VertLayoutEngine(),
        new HorzLayoutEngine(),
        new FullLayoutEngine(),
  };

  context.DefaultLayouts = defaultLayouts;


  //keybindings
  context.Keybinds.Subscribe(KeyModifiers.Alt, Keys.Oemplus, () => context.Workspaces.SwitchToWorkspace(1));
  context.Keybinds.Subscribe(KeyModifiers.Alt, Keys.OemOpenBrackets, () => context.Workspaces.SwitchToWorkspace(1));
  // context.Keykinds.Unsubscribe(KeyModifiers.Alt, Keys.OemOpenBrackets);
  context.Keybinds.Unsubscribe(KeyModifiers.Alt | KeyModifiers.LShift, Keys.D9);
  context.Keybinds.Unsubscribe(KeyModifiers.Alt | KeyModifiers.LShift, Keys.D7);
  //
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LShift, Keys.OemOpenBrackets, () => context.Workspaces.SwitchToWorkspace(2));
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LShift, Keys.D9, () => context.Workspaces.SwitchToWorkspace(3));
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LShift, Keys.D7, () => context.Workspaces.SwitchToWorkspace(4));

  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LControl, Keys.D1, () => context.Workspaces.MoveFocusedWindowToWorkspace(0));
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LControl, Keys.D2, () => context.Workspaces.MoveFocusedWindowToWorkspace(1));
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LControl, Keys.D3, () => context.Workspaces.MoveFocusedWindowToWorkspace(2));
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LControl, Keys.D4, () => context.Workspaces.MoveFocusedWindowToWorkspace(3));
  context.Keybinds.Subscribe(KeyModifiers.Alt | KeyModifiers.LControl, Keys.D5, () => context.Workspaces.MoveFocusedWindowToWorkspace(4));

  context.WindowRouter.AddFilter((window) => !window.Title.Contains("(Ubuntu)"));
  context.WindowRouter.AddRoute((window) => window.Title.Contains("Brave") ? context.WorkspaceContainer["www"] : null);
  context.WindowRouter.AddRoute((window) => window.Title.Contains("Obsidian") ? context.WorkspaceContainer["org"] : null);
};
return doConfig;
