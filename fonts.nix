{ pkgs, config, ... }:
{
  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-extra
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
}
