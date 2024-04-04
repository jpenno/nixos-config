{ config, lib, pkgs, ... }:

{
  home.file = {
    "/home/jp/.config/hypr/modules/binds.conf" = {
      text = ''
        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
        # programs

        # launcs apps
        # bind = $mainMod, A, submap, launch
        # submap = launch
               # bind = , w, exec, brave
               # bindr = , w, submap, reset
               # bind = , r, submap, reset
        # submap=reset

        # kitty
        bind = $mainMod, T, exec, kitty
        bind = $mainMod, Return, exec, kitty
        # brave
        bind = $mainMod, W, exec, brave
        # emacs
        bind = $mainMod, E, exec, emacs
        # obsidian
        bind = $mainMod SHIFT, E, exec, obsidian
        # fille manager
        bind = $mainMod, f, exec, thunar
        # wofi
        bind = $mainMod, R, exec, wofi --show drun
        # wlogout
        bind = $mainMod, X, exec, wlogout

        # volume
        binde= ALT, D, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+
        binde= ALT, A, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-
        bindl= ALT, S, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

        # media
        bind = $mainMod ALT, S, exec, playerctl play-pause

        # kll window
        bind = $mainMod, Q, killactive,

        # exit hyprland
        bind = $mainMod, equal, exit,

        # reload waybar
        bind = SUPER, B, exec, killall waybar && waybar
      '';
    };
  };
}
