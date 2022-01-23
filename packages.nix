{ pkgs, config, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    git
    fzf
    fd
    neovim
    nushell
    starship
  ];
}
