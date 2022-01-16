# nixos-flake

This is a conversion to the nix flakes from https://github.com/LiHRaM/nixos.

## Installation

Installation can be done in many ways.

From GitHub:
```
nixos-rebuild switch --flake github:LiHRaM/nixos-flakes#freyja
```

From filesystem:
```
nixos-rebuild switch --flake .#freyja
```

You could also copy the configations to `/etc/nixos`, in which case:
```
nixos-rebuild switch
```

is enough.

The `#freyja` syntax means we're choosing the `freyja` configuration in the flake.
`nix flake show` should give you a quick overview of which profiles are available.

