{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gnome3.adwaita-icon-theme
  ];
  programs.dconf.enable = true;
  services.xserver = {
    enable = true;
    layout = "dk";
    displayManager.gdm = { enable = true; };
    desktopManager.gnome = { enable = true; };
  };
}
