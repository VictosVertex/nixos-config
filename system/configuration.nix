{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Boot loader
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
  boot.loader.grub.efiSupport = true;

  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.initrd.kernelModules = [ "amdgpu" ];

  # Networking
  networking.hostName = "vertex";
  networking.networkmanager.enable = true;

  # User Account
  users.users.victos = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
  };

  # Localization
  time.timeZone = "Europe/Amsterdam";

  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Window Manager
  programs.hyprland = {
      enable = true;
      xwayland.enable = true;
  };

  # Let Electron Apps use Wayland
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  # Audio
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };

  # Video
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  environment.systemPackages = with pkgs; [
    # Used to find the Windows partition and make it available in GRUB
    ntfs3g
    vim
    git
 ];

  # Allow packages that are not free
  nixpkgs.config.allowUnfree = true;

  
  # Portal for screen sharing etc.
  services.dbus.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = [
	pkgs.xdg-desktop-portal-gtk
    ];
  };	  

  system.stateVersion = "25.05";
}

