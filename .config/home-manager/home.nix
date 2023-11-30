{ config, pkgs, ... }:
let 
  vim-markdownfootnotes = pkgs.vimUtils.buildVimPlugin {
    name = "vim-markdownfootnotes";
    src = pkgs.fetchFromGitHub {
      owner = "vim-pandoc";
      repo = "vim-markdownfootnotes";
      rev = "2b288149f48cfaf7465d25bb094ed62898f5e5b0";
      hash = "sha256-FceYCZMNZpMaU2EaOxZ7Z2+bE00W+TmKsvVHsiBKm8Q=";
    };
  };
in
{
  home = {
	username = "celer";
  	homeDirectory = /home/celer;
	stateVersion = "23.11";
	packages = with pkgs; [
	  libreoffice
	];
  };
  xdg.cacheHome = ~/.cache;
  programs = {
    home-manager.enable = true;
    waybar = {
      enable = true;
      style = ''
        #custom-clock {
          border-radius: 10px;
          background-color: #1d2021;
          color: white;
          margin: 0px 10px 0px 10px;
        }
        #battery {
          border-radius: 10px;
          background: #504905;
          color: white;
          padding: 0px 5px 0px 5px;
          margin: 0px 10px 0px 10px;
        }
        #network {
          border-radius: 10px;
          background: #1d2021;
          color: white;
          padding: 0px 5px 0px 5px; 
          margin: 0px 10px 0px 10px;
        }
        window#waybar {
          background: #7c6f64;
          color: white;
        }

        #workspaces {
          padding: 0px 5px 0px 5px
        }

        #workspaces button {
          background-color: #1d2021;
          margin: 0px 2px 0px 2px;
          color: white;
          border-radius: 5px;
        }
        #workspaces button.focused {
          background-color: #504905;
          color: white;
        }
        #workspaces button.urgent {
          background-color: #fe8019;
          color: white;
        }
      '';
      settings = {
        mainbar = {
          layer = "top";
          position = "top";
          modules-left = [
            "sway/workspaces" 
          ];
          modules-center = [
            "custom/clock"
          ];
          modules-right = [
            "network"
            "battery"
          ];
          "battery" = {
            format = "{icon} {capacity}% {time}";
            states = {
              warning = 25;
              critical = 15;
            };
          };
          "network" = {
            format-wifi = "{essid} ({signalStrength}%): {ipaddr}";
            format-ethernet = "{ifname}: {ipaddr}";
            format-disconnected = "No Connection";
          };
          "clock" = {
            format = "{:%Y-%m-%d | :%H:%M} ";
          };
          "custom/clock" = {
            exec = "echo '  '$(date +'%Y-%m-%d %H:%M')'  '";
            interval = 5;
          };
        };
      };
    };
    neovim = {
      enable = true;
      extraConfig = ''
        autocmd vimenter * ++nested colorscheme gruvbox
        set background=dark
        set nocompatible
        filetype on
        filetype plugin on
        filetype indent on
        syntax on
        set number
        set cursorline
        set shiftwidth=4
        set tabstop=4
        set ignorecase
        set wildmenu
        set wildmode=list:longest
        set wildignore=*.jpg,*.png,*.docx,*.csv,*.pdf
        set backspace=2

        augroup filetype_docs
            autocmd!
            autocmd FileType markdown setlocal spell
        augroup END
      '';
      plugins = with pkgs.vimPlugins; [
        vim-fugitive
        coc-sh
        coc-git
        coc-fzf
        coc-yank
        coc-yaml
        coc-python
        nerdtree
        syntastic
        gruvbox
        emmet-vim
        vim-markdown
        vim-markdownfootnotes
        vim-nix
      ];
      viAlias = true;
      vimAlias = true;
      withPython3 = true;
    };
  };
  services = {
    gammastep = {
      enable = true;
      dawnTime = "07:00";
      duskTime = "20:00";
      temperature = {
        day = 5500;
        night = 4000;
      };
    };
  };
}
