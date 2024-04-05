{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [ xfce.thunar xfce.xfconf ];
}
