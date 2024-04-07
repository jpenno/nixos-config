{ config, lib, pkgs, theme, ... }:

{
  home.packages = with pkgs; [ xfce.thunar xfce.xfconf ];

  #qtk
  qt.enable = true;

  qt.platformTheme = "gtk";

  qt.style.name = "adwaita-dark";

  qt.style.package = pkgs.adwaita-qt;

  # gtk
  gtk.enable = true;

  gtk.theme.package = pkgs.adw-gtk3;
  gtk.theme.name = "adw-gtk3-dark";

  gtk.font.size = 14;
  gtk.font.name = theme.font;

  # gtk.cusorTheme.package = pkgs.bibata-cursors;
  # gtk.cusorTheme.name = "Bibata-Modern-Ice";

  # gtk.iconTheme.package = gruvboxPlus;
  # gtk.iconTheme.name = "GruvboxPlus";

}
