{ config, lib, pkgs, ... }:

{
  imports = [ ./hypr_binds.nix ./binds.nix ];
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = [ ];
    settings = { };
    extraConfig = ''
      # #######################################################################################
      # AUTOGENERATED HYPR CONFIG.
      # PLEASE USE THE CONFIG PROVIDED IN THE GIT REPO /examples/hypr.conf AND EDIT IT,
      # OR EDIT THIS ONE ACCORDING TO THE WIKI INSTRUCTIONS.
      # #######################################################################################

      #
      # Please note not all available settings / options are set here.
      # For a full list, see the wiki
      #

      #autogenerated = 1 # remove this line to remove the warning

      $mainMod = SUPER
      source = ~/.config/hypr/modules/hypr_binds.conf
      source = ~/.config/hypr/modules/binds.conf
      # preload = ~/Downloads/tokyo-night-pictures-7r25z4i0nxt6ra2t.jpg
      # wallpaper = DP-1,~/Downloads/tokyo-night-pictures-7r25z4i0nxt6ra2t.jpg
      # See https://wiki.hyprland.org/Configuring/Monitors/
      #monitor=,preferred,auto,auto
      monitor=DP-1, 2560x1440@164, 1920x-260, 1
      monitor=DP-2, 1920x1080@144, 0x0, 1



      # See https://wiki.hyprland.org/Configuring/Keywords/ for more

      # Execute your favorite apps at launch
      # exec-once = waybar & hyprpaper & firefox
      exec-once = waybar
      exec-once = hyprpaper
      # Source a file (multi-file configs)
      # source = ~/.config/hypr/myColors.conf

      # Set programs that you use
      $terminal = kitty
      $fileManager = dolphin
      $menu = wofi --show drun

      # Some default env vars.
      env = XCURSOR_SIZE,24
      env = QT_QPA_PLATFORMTHEME,qt5ct # change to qt6ct if you have that

      # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
      input {

          kb_layout = us
          kb_variant =
          kb_model =
          kb_options = caps:escape
          kb_rules =

          follow_mouse = 1

          touchpad {
              natural_scroll = no
          }

          sensitivity = 0 # -1.0 to 1.0, 0 means no modification.
          accel_profile = flat
      }

      general {
          # See https://wiki.hyprland.org/Configuring/Variables/ for more

          gaps_in = 10
          gaps_out = 10
          border_size = 2
          col.active_border = rgb(c0caf5)
          col.inactive_border = rgb(1a1b26)

          layout = master

          # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
          allow_tearing = false
      }

      decoration {
          # See https://wiki.hyprland.org/Configuring/Variables/ for more

          rounding = 10

          blur {
              enabled = true
              size = 3
              passes = 1
          }

          active_opacity = 1.0
          inactive_opacity = 0.9
          fullscreen_opacity = 1.0

          drop_shadow = yes
          shadow_range = 4
          shadow_render_power = 3
          col.shadow = rgba(1a1a1aee)
      }

      animations {
          enabled = yes

          # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

          bezier = myBezier, 0.05, 0.9, 0.1, 1.05

          animation = windows, 1, 7, myBezier
          animation = windowsOut, 1, 7, default, popin 80%
          animation = border, 1, 10, default
          animation = borderangle, 1, 8, default
          animation = fade, 1, 7, default
          animation = workspaces, 1, 6, default
      }

      dwindle {
          # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
          pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
          preserve_split = yes # you probably want this
      }

      master {
          # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
          new_is_master = true
          no_gaps_when_only = 1
      }

      gestures {
          # See https://wiki.hyprland.org/Configuring/Variables/ for more
          workspace_swipe = off
      }

      misc {
          # See https://wiki.hyprland.org/Configuring/Variables/ for more
          force_default_wallpaper = 0 # Set to 0 or 1 to disable the anime mascot wallpapers
      }

      # Example per-device config
      # See https://wiki.hyprland.org/Configuring/Keywords/#executing for more
      device:epic-mouse-v1 {
          sensitivity = -0.5
      }

      # Example windowrule v1
      # windowrule = float, ^(kitty)$
      # Example windowrule v2
      # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
      # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
      #windowrulev2 = suppressevent maximize, class:.* # You'll probably like this.
      windowrule = opacity 0.9 override,^(obsidian)$ # set opacity to 0.9 active obsidian
      windowrule = opacity 0.9 override,^(Emacs)$ # set opacity to 0.9 active obsidian
      windowrule = opacity 1.0 override 1.0 override, ^(net-runelite-client-RuneLite)$ # set opacity to 0.9 active obsidian
      windowrule = float, ^(net-runelite-client-RuneLite)$ # floats runelite client
      windowrule = opacity 1.0 override 0.97 override,^(Brave-browser)$ # set opacity to 0.9 active obsidian

      # work space rulles
      workspace=1,gapsin:0,gapsout:0,bordersize:0, monitor:DP-1, default:true, persistent:true
      workspace=2,monitor:DP-1, default:true, persistent:true
      workspace=3,monitor:DP-1, default:true, persistent:true
      workspace=4,monitor:DP-1, default:true
      workspace=5,monitor:DP-1, default:true
      workspace=6,monitor:DP-2, default:true, persistent:true
      workspace=7,monitor:DP-2, default:true, persistent:true
      workspace=8,monitor:DP-2, default:true, persistent:true
      workspace=9,monitor:DP-2, default:true
      workspace=10,monitor:DP-2, default:true
    '';
  };

  home.packages = with pkgs; [
    wlogout
    hyprpaper
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    xdg-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];
}
