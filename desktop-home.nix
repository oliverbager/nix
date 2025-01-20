{ config, pkgs, ... }:

{
  # home-manager
  home.username = "oliver";
  home.homeDirectory = "/home/oliver";

  # import modules
  imports = [
    ./modules
  ];

  home.packages = with pkgs; [
    # empty
  ];

  # config
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
