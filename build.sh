if [[ "$EUID" = 0 ]]; then
  nixos-rebuild switch --flake "github:LiHRaM/nixos-flake#$1"
else
  echo "$0 must be run as sudo"
fi
