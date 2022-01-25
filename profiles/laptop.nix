{ pkgs, ... }:
{
  services.flatpak.enable = true;
  fonts.fontDir.enable = true;
  services.logind.lidSwitch = "suspend-then-hibernate";
}
