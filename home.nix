{ config, pkgs, ... }:

{
  # home-manager
  home.username = "oliver";
  home.homeDirectory = "/home/oliver";

  # import modules
  imports = [
    ./modules
  ];

  home.packacges = with pkgs; [
    # empty
  ];

  # config
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
