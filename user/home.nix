{ config, pkgs, ... }:

{
	home.username = "victos";
	home.homeDirectory = "/home/victos";
	
	home.file.".icons/default".source = "${pkgs.vanilla-dmz}/share/icons/Vanilla-DMZ";

	programs.git = {
		enable = true;
		userName = "VictosVertex";
		userEmail = "Victos.Vertex@gmail.com";
	};	

  	home.packages = with pkgs; [
	    	# Text Editor
		neovim

		# Communication
    		discord

    		# Browser
    		brave

    		# Terminal
    		ghostty
    		zellij
    
   		 # Window Management
    		hyprland
    		waybar
    		xwayland
    		xdg-desktop-portal-hyprland
    		xdg-desktop-portal-gtk
    		swww

    		# App Launcher
		fuzzel

		# Audio Control
    		pavucontrol

		# Gaming
		lutris
	];


	xdg.configFile = {
		"hypr/hyprland.conf".source = ./hypr/hyprland.conf;
		"nvim".source = ./nvim;
	};

  	home.stateVersion = "25.05";
}
