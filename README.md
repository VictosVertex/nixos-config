# NixOS Config ❄️

This repository contains the configuration files for my personal system running NixOS.
As I explore how NixOS works, this configuration will grow and evolve.

The goal is to learn a different way of configuring a clean and stable system.
It will mainly be used for development but may introduce other elements, such as gaming.

## Philosophy

While NixOS can configure almost everything (it seems), I've chosen to follow a hybrid approach. 
More precisely, I've decided to keep certain configurations in the same repository 
but still use their native configurations. For example, NeoVIM will be configured using lua (with [lazy.nvim](https://github.com/folke/lazy.nvim)),
not nix.

This may introduce some extra challenges, but could also provide some benefits:
* **Portability:** The native configuration remains self-contained and can easily be used in non-Nix-based machines.
* **Ecosystem:** The documentation around **NixOS** seems to be not on par with its capabilities. 
By constrast, applications like **NeoVim** have a vast ecosystem of documentation, 
tools and guides for their native configuration language.

## Core Technologies

Current key pieces of software:

* **Operating System:** [NixOS](https://nixos.org/)
* **Configuration Management:** [Nix Flakes](https://nixos.wiki/wiki/Flakes) & [Home Manager](https://nix-community.github.io/home-manager/)
* **Window Manager:** [Hyprland](https://hypr.land/)
* **Editor:** [Neovim](https://neovim.io/)
* **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
* **Application Launcher:** [Fuzzel](https://codeberg.org/dnkl/fuzzel)
* **Terminal:** [Ghostty](https://github.com/mitchellh/ghostty)

## Repository Structure

    ├── flake.nix                           # Main entrypoint, defines inputs and outputs.
    ├── README.md                           # You are here!
    │
    ├── system/                             # System-wide configuration for NixOS.
    │   ├── configuration.nix
    │   └── hardware-configuration.nix      # This is specific to my system!
    │
    └── home/                               # User-specific configuration.
        ├── home.nix                        # Home-Manager (packages / services)
        ├── hypr/                           # Hyprland
        ├── nvim/                           # NeoVim
        └── ...
