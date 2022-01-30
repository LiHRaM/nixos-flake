{ config, pkgs, ... }:
{
    home.username = "lihram";
    home.homeDirectory = "/home/lihram";

    home.stateVersion = "22.05";

    programs.home-manager.enable = true;

    home.packages = [
        pkgs.gnome3.gnome-tweaks
    ];

    gtk.enable = true;
    gtk.theme.name = "Adwaita-dark";

    dconf.settings = {
        "org/gnome/desktop/peripherals/mouse" = {
            natural-scroll = false;
        };

        "org/gnome/desktop/peripherals/touchpad" = {
            natural-scroll = true;
            tap-to-click = true;
        };
    };
}
