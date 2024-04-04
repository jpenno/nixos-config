{ config, lib, pkgs, ... }:

{
  # Fonts are nice to have
  fonts.packages = with pkgs; [
    # Fonts
    font-awesome_5
  ];
}
