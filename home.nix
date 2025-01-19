{ config, pkgs, ... }:

{
  home.username = "oliver";
  home.homeDirectory = "/home/oliver";

  imports = [
    ./modules
  ];

  home.packages = with pkgs; [

    # communication
    vesktop

    # archive files
    zip
    unzip

    # browsers
    brave

    # document viewers
    zathura
    # neovim

    # utils
    ripgrep
    tree
    eza
    fzf

    # programming
    lua-language-server
    python3
    rustup
    nodejs
    gcc
    git

    # system
    texlive.combined.scheme-full
    btop
  ];

  programs.zathura = {
    enable = true;
    options = {
       default-bg = "#1e2030";
       default-fg = "#232437";
       statusbar-fg = "#a9b1d6";
       statusbar-bg = "#24283b";
       inputbar-bg = "#1a1b26";
       inputbar-fg = "#73daca";
       notification-bg = "#1a1b26";
       notification-fg = "#73daca";
       notification-error-bg = "#1a1b26";
       notification-error-fg = "#f7768e";
       notification-warning-bg = "#1a1b26";
       notification-warning-fg = "#f7768e";
       highlight-color = "#e0af68";
       highlight-active-color = "#9aa5ce";
       completion-bg = "#24283b";
       completion-fg = "#a9b1d6";
       completion-highlight-fg = "#9aa5ce";
       completion-highlight-bg = "#24283b";
       recolor-lightcolor = "#232437";
       recolor-darkcolor = "#a9b1d6";
       recolor = "true";
       recolor-keephue = "false";
    };
  };

  programs.git = {
    enable = true;
    userName = "Oliver";
    userEmail = "oliver.nielsen.bager@gmail.com";
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
