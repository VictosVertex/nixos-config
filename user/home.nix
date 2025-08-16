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

    # SSH	
    programs.ssh = {
        enable = true;
        addKeysToAgent = "yes";
    };	

    # SSH Agent to hold the key
    services.ssh-agent.enable = true;
    
    home.packages = with pkgs; [
        # Text Editor
        neovim

        # Programming
        gcc

        rustc
        cargo
        clippy
        rustfmt
        rust-analyzer

        lua-language-server

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

        # Utility
        btop

        # Graphic Design
        inkscape

        # Fonts
        fira-code
        aileron
        nerd-fonts.jetbrains-mono
    ];


    xdg.configFile = {
        "hypr/hyprland.conf".source = ./hypr/hyprland.conf;
        "nvim".source = ./nvim;
        "ghostty/config".source = ./ghostty/config;
        "waybar".source = ./waybar;
        "fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
    };

    home.stateVersion = "25.05";
}
