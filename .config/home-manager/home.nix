{ config, pkgs, ... }:
{
  home = {
	username = "celer";
  	homeDirectory = /home/celer;
	stateVersion = "23.11";
	packages = with pkgs; [
	  libreoffice
	];
  };
  xdg.cacheHome = ~/.cache;
  programs = {
    home-manager.enable = true;
  };
  services = {
    gammastep = {
      enable = true;
      dawnTime = "07:00";
      duskTime = "20:00";
      temperature = {
        day = 5500;
        night = 4000;
      };
    };
  };
}
