{ config, pkgs, ... }: 

{  
  # module directories
  imports = [
    ./nvim
    ./zathura
  ];

  # default packages
  home.packages = with pkgs; [

    # communication
    thunderbird
    vesktop

    # file management
    zip
    unzip

    # browsers
    brave

    # utils
    wl-clipboard
    obs-studio
    keepassxc
    ripgrep
    wget
    tree
    btop
    eza
    fzf

    #lsp / programming
    lua-language-server
    python3
    rustup
    nodejs
    julia
    sage
    lua
    gcc
    git
    
    # latex
    texlive.combined.scheme-full

    # fonts
    (nerdfonts.override {fonts = [ "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.enable = true;

  programs.git = {
    enable = true;
    userName = "Oliver";
    userEmail = "oliver.nielsen.bager@gmail.com";
  };
}
