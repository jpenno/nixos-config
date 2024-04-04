{ config, lib, pkgs, ... }:

{
  home.file = {
    "/home/jp/.config/wlogout/style.css" = {
      text = ''
        * {
        	background-image: none;
        	box-shadow: none;
        }

        window {
        	background-color: rgba(12, 12, 12, 0.9);
        }

        button {
            border-radius: 0;
            border-color: black;
        	text-decoration-color: #FFFFFF;
            color: #FFFFFF;
        	background-color: #1E1E1E;
        	border-style: solid;
        	border-width: 1px;
        	background-repeat: no-repeat;
        	background-position: center;
        	background-size: 25%;
        }

        button:focus, button:active, button:hover {
        	background-color: #3700B3;
        	outline-style: none;
        }

        #lock {
            background-image: image(url("/home/jp/.dotfiles/user/app/wm/wlogout/icons/lock.png"));
        }

        #logout {
            background-image: image(url("/home/jp/.dotfiles/user/app/wm/wlogout/icons/logout.png"));
        }

        #suspend {
            background-image: image(url("/home/jp/.dotfiles/user/app/wm/wlogout/icons/suspend.png"));
        }

        #hibernate {
            background-image: image(url("/home/jp/.dotfiles/user/app/wm/wlogout/icons/hibernate.png"));
        }

        #shutdown {
            background-image: image(url("/home/jp/.dotfiles/user/app/wm/wlogout/icons/shutdown.png"));
        }

        #reboot {
            background-image: image(url("/home/jp/.dotfiles/user/app/wm/wlogout/icons/reboot.png"));
        }
      '';
    };
  };
}
