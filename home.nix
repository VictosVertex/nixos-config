{ config, pkg, ... }:

{
	home.username = "victos";
	home.homeDirectory = "home/victos";
      
  	home.packages = with pkgs; [
		neofetch
	];
}
