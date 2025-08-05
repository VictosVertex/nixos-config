{ config, pkgs, ... }:

{
	home.username = "victos";
	home.homeDirectory = "/home/victos";
      	
	programs.git = {
		enable = true;
		userName = "VictosVertex";
		userEmail = "Victos.Vertex@gmail.com";
	};	

  	home.packages = with pkgs; [
		neofetch
	];


	xdg.configFile = {
		"hypr/hyprland.conf".source = ./hypr/hyprland.conf;
	};

  	home.stateVersion = "25.05";
}
