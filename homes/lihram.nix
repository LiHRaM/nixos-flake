{ config, pkgs, ... }:
{
	home.username = "lihram";
	home.homeDirectory = "/home/lihram";

	home.stateVersion = "22.05";
	
	programs.home-manager.enable = true;
	programs.neovim.enable = true;
	programs.neovim.viAlias = true;
	programs.neovim.vimAlias = true;

	dconf.settings = {
		"apps/light-locker" = {
			idle-hint = false;
			late-locking = true;
			lock-after-screensaver = "uint32 5";
			lock-on-lid = true;
			lock-on-suspend = true;
		};

		"io/elementary/desktop/wingpanel/bluetooth" = {
			bluetooth-enabled = false;
		};

		"io/elementary/desktop/wingpanel/power" = {
			show-percentage = true;
		};

		"io/elementary/terminal/settings" = {
			natural-copy-paste = false;
			prefer-dark-style = true;
		};

		"net/launchpad/plank/docks/dock1" = {
			theme = "Matte";
		};

		"org/gnome/desktop/interface" = {
			document-font-name = "sans 10";
			font-name = "sans 10";
			monospace-font-name = "monospace 10";
		};

		"org/gnome/desktop/peripherals/mouse" = {
			natural-scroll = false;
		};

		"org/gnome/desktop/peripherals/touchpad" = {
			natural-scroll = true;
		};
	};
}
