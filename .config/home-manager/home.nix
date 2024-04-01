{ config, pkgs, ... }:

{
  imports = [
#    "/home/celer/nixos-files/configs/modules/river.nix"
#    "/home/celer/nixos-files/configs/modules/librewolf.nix"
#    "/home/celer/nixos-files/configs/modules/firefox-home.nix"
  ];
  nixpkgs.config.allowUnfree = true;
  home = {
	username = "celer";
  	homeDirectory = /home/celer;
	stateVersion = "23.11";
	packages = with pkgs; [
      libreoffice
      slack
	];
  };
  xdg = {
    cacheHome = ~/.cache;
    desktopEntries = {
      slack = {
        exec = "${pkgs.slack}/bin/slack %u";
        name = "slack";
      };
    };
  };
  programs = {
    home-manager.enable = true;
  };
}
