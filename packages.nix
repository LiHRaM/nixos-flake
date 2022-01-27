{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wget
    git
    fzf
    fd
    neovim-lihram
    nushell
    starship
    gitoxide
    sd
  ];
}
