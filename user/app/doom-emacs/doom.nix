{ config, pkgs, theme, ... }:
let

in {  
  home.packages = with pkgs; [
    # required dependencies
    git
    emacs    # Emacs 27.2
    ripgrep
    # optional dependencies
    coreutils # basic GNU utilities
    fd
    clang
    cmake
    libvterm
    libtool
    nixfmt
  ];

  home.file = {
    "/home/jp/.config/doom/init.el" = {
        source = ./init.el;
    };
    "/home/jp/.config/doom/config.el" = {
        # source = ./config.el;
        text = ''
                (setq doom-theme 'doom-dracula)
                (setq display-line-numbers-type t)
                (setq org-directory "~/org/")
                (setq doom-font (font-spec :family "''+theme.font+''" :size  ''+ builtins.toString theme.fontSize+'' )) ; import font
            '';
    };
    "/home/jp/.config/doom/packages.el" = {
        source = ./packages.el;
    };
  };
}
