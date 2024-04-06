{ config, lib, pkgs, ... }:

{
  programs.waybar.settings.mainBar = {
    # Workspaces
    "hyprland/workspaces" = {
      "on-click" = "activate";
      "on-scroll-up" = "hyprctl dispatch workspace e+1";
      "on-scroll-down" = "hyprctl dispatch workspace e-1";
      "all-outputs" = false;
      "active-only" = false;
      "format" = "{icon}";
      "format-icons" = {
        # "1": "", # Icon: firefox-browser
        # "2": "", # Icon: mail
        # "3": "", # Icon: code
        "urgent" = "";
        "active" = "";
        "default" = "";
      };
    };

    # Group apps
    "group/apps" = {
      "orientation" = "horizontal";
      "modules" = [
        "custom/wofi"
        "custom/browser"
        "custom/obsidian"
        "custom/filemanager"
      ];
    };

    # launch wofi
    "custom/wofi" = {
      "format" = "";
      "on-click" = "wofi --show drun";
      "tooltip" = false;
    };
    # Browser Launcher
    "custom/browser" = {
      "format" = "";
      "on-click" = "brave";
      "tooltip" = false;
    };
    # obsidian launcher
    "custom/obsidian" = {
      "format" = "";
      "on-click" = "obsidian";
      "tooltip" = false;
    };
    # Filemanager Launcher
    "custom/filemanager" = {
      "format" = "󰝰";
      "on-click" = "thunar";
      "tooltip" = false;
    };

    "custom/media" = {
      "format" = "{icon}";
      "interval" = 1;
      "return-type" = "json";
      "on-click" = "playerctl play-pause";
      "on-click-right" = "playerctl -p mpv play-pause";
      "exec" = "/home/jp/.dotfiles/user/app/wm/waybar/scripts/play-pause.sh";
      "tooltip" = false;
      "format-icons" = {
        "playing" = "";
        "paused" = "";
      };
    };

    # "custom/mouse" = {
    #   "format" = " {}% {icon}";
    #   "interval" = 60;
    #   "return-type" = "json";
    #   "exec" = "~/dotfiles/.config/waybar/scripts/moues_battery.py";
    #   "tooltip" = false;
    #   "format-icons" = {
    #     "flat" = "";
    #     "very-low" = "";
    #     "low" = "";
    #     "ok" = "";
    #     "good" = "";
    #     "na" = "";
    #   };
    # };

    pulseaudio = {
      "tooltip" = false;
      # "scroll-step": 1, # %, can be a float
      "format" = "{icon} {volume}%";
      "format-muted" = "󰝟";
      "format-icons" = { "default" = [ "" "" "" ]; };
      "on-click-right" = "pavucontrol";
      "on-click" = ''
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
      '';
    };

    "clock#time" = {
      "format" = "{:%I:%M } ";
      "format-alt" = "{:%a, %b %d %C%y} ";
      "tooltip" = false;
      "on-click-right" = "gsimplecal";
    };

    # clock = {
    #   "interval" = 1;
    #   "format" = "{:%a %Y-%m-%d %I:%M:%S %p}";
    #   "timezone" = "America/Chicago";
    #   "tooltip-format" = ''
    #     <big>{:%Y %B}</big>
    #     <tt><small>{calendar}</small></tt>'';
    # };

    # clock = {
    #   "format" = "{:%I:%M } ";
    #   "format-alt" = "{:%a, %b %d %C%y} ";
    #   "tooltip" = false;
    #   "on-click-right" = "gsimplecal";
    # };

    tray = {
      "icon-size" = 21;
      "spacing" = 10;
    };

    "custom/wlogout" = {
      "format" = "";
      "on-click" = "wlogout";
      "tooltip" = false;
    };
  };
}
