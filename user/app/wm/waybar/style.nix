{ config, lib, pkgs, ... }:

{
  programs.waybar = {
    style = ''
      /* =============================================================================
       *
       * Waybar configuration
       *
       * Configuration reference: https://github.com/Alexays/Waybar/wiki/Configuration
       *
       * =========================================================================== */

      /* -----------------------------------------------------------------------------
       * colours
       * -------------------------------------------------------------------------- */ @define-color foreground	#a9b1d6;
      @define-color background	#1a1b26;
      @define-color black	#414868;
      @define-color red	#f7768e;
      @define-color green	#73daca;
      @define-color cyan	#7dcfff;
      @define-color white	#c0caf5;
      @define-color yellow	#e0af68;
      @define-color magenta	#bb9af7;
      /* -----------------------------------------------------------------------------
       * Keyframes
       * -------------------------------------------------------------------------- */

      @keyframes blink-warning {
          70% {
              color: white;
          }

          to {
              color: white;
              background-color: orange;
          }
      }

      @keyframes blink-critical {
          70% {
            color: @white;
          }

          to {
              color: @white;
              background-color: @red;
          }
      }

      @keyframes nothing {
      }
      /* -----------------------------------------------------------------------------
       * Base styles
       * -------------------------------------------------------------------------- */

      /* Reset all styles */
      * {
          border: none;
          border-radius: 0;
          min-height: 0;
          margin: 0;
          padding: 0;
      }
      /* The whole bar */
      #waybar {
          background-color:rgba(65, 72, 104, 0.6);
          font-family: Intell One Mono, Cantarell, Noto Sans, sans-serif;
          font-size: 24px;
          border-top: solid;
          border-top-color: #c0caf5;
          border-top-width: 2;
      }

      /* #waybar.hidden { */
      /*     opacity: 0.1; */
      /* } */
      /* Each module */
      #battery,
      #clock {
          background: @background;
          color: @foreground;
          /* opacity: 0.7; */
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }
      #cpu,
      #custom-keyboard-layout,
      #memory,
      #mode,
      #network,
      #pulseaudio,
      #temperature,
      #tray {
          padding-left: 10px;
          padding-right: 10px;
      }


      /* -----------------------------------------------------------------------------
       * Module styles
       * -------------------------------------------------------------------------- */

      #battery {
          animation-timing-function: linear;
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }

      #battery.warning {
          color: orange;
      }

      #battery.critical {
          color: red;
      }

      #battery.warning.discharging {
          animation-name: blink-warning;
          animation-duration: 3s;
      }

      #battery.critical.discharging {
          animation-name: blink-critical;
          animation-duration: 2s;
      }

      #clock {
          font-weight: bold;
      }

      #cpu {
        /* No styles */
      }

      #cpu.warning {
          color: orange;
      }

      #cpu.critical {
          color: red;
      }

      #memory {
          animation-timing-function: linear;
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }

      #memory.warning {
          color: orange;
      }

      #memory.critical {
          color: red;
          animation-name: blink-critical;
          animation-duration: 2s;
      }

      #mode {
          background: #64727D;
          border-top: 2px solid white;
          /* To compensate for the top border and still have vertical centering */
          padding-bottom: 2px;
      }

      #network {
          /* No styles */
      }

      #network.disconnected {
          color: orange;
      }

      #pulseaudio {
          /* No styles */
          background: @background;
          color: @foreground;
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #pulseaudio.muted {
          /* No styles */
          color: @red;
      }

      #custom-spotify {
          color: rgb(102, 220, 105);
      }

      #tray {
          /* No styles */
      }

      #window {
          font-weight: bold;
          opacity: 0.8;
      }

      #workspaces button {
          /* border-top: 2px solid transparent; */
          /* To compensate for the top border and still have vertical centering */
          /* padding-bottom: 2px; */
          /* padding-left: 15px; */
          /* padding-right: 15px; */
          color: @forground;
          transition: all 0.3s ease-in-out;
          /* opacity: 0.7; */
          border-radius: 15px;

          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
      }

      #workspaces button.active {
          color: @black;
          background-color: #c0caf5;
          /* opacity: 0.9; */
          border-radius: 15px;
      }

      #workspaces button.urgent {
          border-color: @red;
          color:  @red;
      }
      #custom-filemanager {
          background: @background;
          color: #a9b1d6;
          color: #7dcfff;
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #custom-browser {
          background: @background;
          color: #e0af68;
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #custom-obsidian {
          background: @background;
          color: #a9b1d6;
          color: #7aa2f7;
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #custom-wofi {
          background: @background;
          color: @green;
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #custom-media {
          background: @background;
          opacity: 1.0;
          border-radius: 5px;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }
      #custom-media.playing {
          color: @red;
      }
      #custom-media.paused {
          color: @green;
      }

      #custom-wlogout {
          /* background: green; */
          border-radius: 5px;
          background: @background;
          color: @red;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 10px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #custom-updates {
          border-radius: 5px;
          background: @background;
          color: @red;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }

      #custom-updates.has-updates {
          color: @red;
      }

      #custom-updates.updated {
          color: @green;
      }

      #custom-mouse{
          animation-timing-function: linear;
          animation-iteration-count: infinite;
          animation-direction: alternate;
          border-radius: 5px;
          background: @background;
          color: @red;
          padding-right: 15px;
          padding-left: 15px;
          padding-top: 5px;
          padding-bottom: 5px;
          margin-right: 15px;
          margin-bottom: 5px;
          margin-top: 5px;
          margin-bottom: 5px;
      }
      #custom-mouse.flat{
          animation-name: blink-critical;
          color: @red;
      }
      #custom-mouse.na{
          animation-name: nothing;
          color: @white;
      }
      #custom-mouse.very-low{
          animation-name: nothing;
          color: @red;
      }
      #custom-mouse.low{
          animation-name: nothing;
          color: @yellow;
      }
      #custom-mouse.ok{
          animation-name: nothing;
          color: @magenta;
      }
      #custom-mouse.good{
          animation-name: nothing;
          color: @green;
      }
    '';
  };
}
