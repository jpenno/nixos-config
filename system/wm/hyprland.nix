{ config, lib, pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    #extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # Enabling hyprland on NixOS
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    # If your coursor becomes invisible
    WLR_NO_HARDWARE_COURSORS = "1";
    # Hint electron apps to use wayland
    #NIXOS_OZONE_WL = "1";
  };

  hardware = {
    # Opengl
    opengl.enable = true;

    # Most wayland compositors need this
    nvidia.modesetting.enable = true;
  };

  environment.systemPackages = [
    pkgs.waybar
    pkgs.wofi
    pkgs.playerctl
  ];
}
