{ config, lib, pkgs, ... }:

{
  home.file = {
    "/home/jp/.config/hypr/hyprpaper.conf" = {
      text = ''
        preload = ~/.dotfiles/Wallpapers/7056490.png
        preload = ~/.dotfiles/Wallpapers/4249571.jpg
        #preload = ~/Downloads/tokyo-night-pictures-7r25z4i0nxt6ra2t.jpg
        wallpaper = DP-1,~/.dotfiles/Wallpapers/4249571.jpg
        wallpaper = DP-2,~/.dotfiles/Wallpapers/7056490.png
        splash = false
      '';
    };
  };

  home.packages = with pkgs; [
    hyprpaper
  ];
}
