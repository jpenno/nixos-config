{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    emacsPackages.go-guru
    emacsPackages.gofmt-tag
    go
    gopls
    gomodifytags
    gotests
    gore
  ];
}
