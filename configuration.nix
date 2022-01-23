{ config, pkgs, neovim-lihram, ... }:
{
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  imports =
    [
      ./modules/default.nix
      ./users.nix
      ./fonts.nix
    ];

  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  system.stateVersion = "21.11";
}

