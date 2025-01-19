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
    lua
    gcc
    git
    
    # latex
    texlive.combined.scheme-full
  ];

  fonts.packages = with pkgs [
    (nerdfonts.override {fonts = [ JetBrainsMono ]; })
    jetbrainsmono
  ];

  programs.git = {
    enable = true;
    userName = "Oliver";
    userEmail = "oliver.nielsen.bager@gmail.com";
  };
}
