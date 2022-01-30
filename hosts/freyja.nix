{ ... }:
{
  environment.variables = {
    LANG = "en_DK";
    EDITOR = "nvim";
  };

  networking = {
    hostName = "freyja";
    useDHCP = false;

    networkmanager.enable = true;
    interfaces.wlp58s0.useDHCP = true;
  };

  time.timeZone = "Europe/Copenhagen";

  i18n.defaultLocale = "en_DK.UTF-8";
  console = {
    keyMap = "dk";
  };

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  services.openssh.enable = true;
}
