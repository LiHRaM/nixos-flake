{ pkgs, ... }:
{
    services.kubernetes = {
        masterAddress = "localhost";
        roles = [ "master" "node" ];
    };
}
