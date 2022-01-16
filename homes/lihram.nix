{ config, pkgs, ... }:
{
	home.username = "lihram";
	home.homeDirectory = "/home/lihram";

	home.stateVersion = "22.05";
	
	programs.home-manager.enable = true;
	programs.neovim.enable = true;
	programs.neovim.viAlias = true;
	programs.neovim.vimAlias = true;

	home.packages = [
          pkgs.gnome3.gnome-tweaks
	];

	gtk.enable = true;
	gtk.theme.name = "Adwaita-dark";

	dconf.settings = {
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
			tap-to-click = true;
		};
	};
}
