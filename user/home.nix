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
        enableDefaultConfig = false;
        matchBlocks."*".addKeysToAgent = "yes";
    };

    # SSH Agent to hold the key
    services.ssh-agent.enable = true;
    
    # Shell
    programs.nushell = {
        enable = true;
        configFile.source = ./nushell/config.nu;
    };

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
        typst
        tinymist
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
        websocat # Websockets, needed for typst preview
        grim     # Screenshot utility
        slurp    # Region selector
        wl-clipboard # Clipboard utility (screenshot into clipboard)

        # Graphic Design
        inkscape

        # Fonts
        fira-code
        aileron
        nerd-fonts.jetbrains-mono
    ];


    xdg.configFile = {
        "hypr/hyprland.conf".source = ./hypr/hyprland.conf;
        "ghostty/config".source = ./ghostty/config;
        "waybar".source = ./waybar;
        "fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
        "btop".source = ./btop;
    };
    
    home.file.".config/nvim" = {
        source = ./nvim;
        recursive = true;
    };
    
    home.stateVersion = "25.05";
}
