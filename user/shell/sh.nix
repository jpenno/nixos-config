{ config, pkgs, ... }:
let
    myAliases = {
      ll = "ls -l";
      ".." = "cd ..";
      "cl" = "clear";
      "x" = "exit";
      "doom" = "/home/jp/.emacs.d/bin/doom";
    };
in {
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };

  programs.zsh = {
    enable = true;
    shellAliases = myAliases;
    syntaxHighlighting.enable = true;
    prezto.enable = true;
    prezto.prompt.theme = "steeef";
  };
}
