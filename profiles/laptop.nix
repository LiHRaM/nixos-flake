{ pkgs, ... }:
{
  services.flatpak.enable = true;
  services.logind.lidSwitch = "suspend-then-hibernate";
}
