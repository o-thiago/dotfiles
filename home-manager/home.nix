{ config, inputs, pkgs, ... }:
{
  imports = [
	./config/alacritty.nix
	./config/theme.nix
  ];

  home = {
	username = "thiago";
	homeDirectory = "/home/thiago";
	stateVersion = "23.11";
	packages = with pkgs; [
		firefox
		git
		mako
		xfce.thunar

		github-cli

		# Desktop
		wofi
		waybar
		swww

		# Screenshoot 
		grim
		slurp
		wl-clipboard

		# fonts
		jetbrains-mono
		udev-gothic-nf
	  ];
  };

  programs = {
	home-manager.enable = true;
	bash.enable = true;
  };
}
