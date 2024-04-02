{ pkgs, lib, theme, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = {
    enable = true;
    theme = "Dracula";

    font = {
      name = theme.font;
      size = theme.fontSize;
    };

    settings = {
      background_opacity = lib.mkForce "0.75";
    };
  };
}
