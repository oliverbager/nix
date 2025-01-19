{ config, pkgs, ... }: 

{
  programs.neovim.enable = true;

  xdg = {
    enable = true;
    configFile."nvim" = {
      source = ./config;
      recursive = true;
    };
  };
}
