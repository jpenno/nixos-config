{ config, lib, pkgs, ... }:

{
  programs.waybar = {
    settings.mainBar = {
      layer = "top";
      position = "bottom";
      height = 50;
      margin = "0 0 0 0";
      spacing = 2;

      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ "group/apps" ];
      modules-right =
        [ "custom/media" "pulseaudio" "clock#time" "tray" "custom/wlogout" ];
    };
  };
}
