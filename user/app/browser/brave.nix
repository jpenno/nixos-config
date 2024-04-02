{ pkgs, ... }:

{
  #home.packages = [ pkgs.brave ];

  programs.brave = {
    enable = true;
    # package = pkgs.brave;
    extensions = [
     "aapbdbdomjkkjkaonfhkkikfgjllcleb" # google translate
    ];
  };
}
