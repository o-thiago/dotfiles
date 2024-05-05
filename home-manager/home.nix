{ inputs, pkgs, ... }:
let
	inherit (import ./variables.nix) username;
	inherit (import ../nixzin/variables.nix) state;
in
{
  imports = [
	./alacritty.nix
	./theme.nix
  ];

  home = {
	username = "${username}";
	homeDirectory = "/home/${username}";
	stateVersion = "${state}";
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
