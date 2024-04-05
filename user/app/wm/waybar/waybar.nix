{ config, lib, pkgs, ... }:

{
  imports = [ ./config.nix ./style.nix ./modules.nix ];

  programs.waybar = { enable = true; };
}
