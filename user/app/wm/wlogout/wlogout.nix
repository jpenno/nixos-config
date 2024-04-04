{ config, lib, pkgs, ... }:

{
  imports = [ ./layout.nix ./style.nix ];
  home.packages = with pkgs; [ wlogout ];
}
