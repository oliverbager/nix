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
    vesktop

    # file management
    zip
    unzip

    # browsers
    brave

    # utils
    ripgrep
    tree
    btop
    eza
    fzf

    #lsp / programming
    lua-language-server
    python3
    rustup
    nodejs
    gcc
    git
    
    # latex
    texlive.combined.scheme-full
  ];

  programs.git = {
    enable = true;
    userName = "Oliver";
    userEmail = "oliver.nielsen.bager@gmail.com";
  };
}
