{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "luna";
  home.homeDirectory = "/home/luna";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.05"; # Please read the comment before changing.
  nixpkgs.config.allowUnfree = true;
  
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
        firefox
        google-chrome
        kitty
        kitty-themes
        neovim
        btop
        slack
	droidcam
	discord
        thefuck
	nerdfonts
	terminus-nerdfont
	nodejs_18
	yarn
        spaceship-prompt
	git
	colorls
	ripgrep
	powerline
	dolphin
	dunst
	gtk3
	mangohud
        neofetch
	rofi
	swaylock
	swww
	waybar
	wlogout
	xsettingsd
	pokemon-colorscripts-mac
	oh-my-zsh
	zsh-powerlevel10k
	zsh-syntax-highlighting
	zsh-autosuggestions
	exa
	meslo-lgs-nf
	killall
        envsubst
	imagemagick
      ];
      programs.git = {
        enable = true;
	userName = "Will Byrne";
	userEmail = "will.alex.byrne@gmail.com";
      };
      #programs.zsh = {
     # 	enable = true;
     # 	enableAutosuggestions = true;
     # 	enableCompletion = true;
     # 	localVariables = {
     # 	  ZSH_THEME = "spaceship";
     # 	};
     # 	oh-my-zsh = {
     #     enable = true;
     #     plugins = [ "git" "thefuck" ];
     #     theme = "robbyrussell";
     #   };
     #   shellAliases = {
     #     open = "xdg-open";
     #     hms = "home-manager -f ~/hyperdots/home.nix switch";
     #   };
     # };
     # programs.kitty = {
      #  enable = true;
      #  font = {
      #    name = "FiraCode Nerd Font";
      #    size = 10.5;
	#  package = pkgs.fira-code;
        #};
        #shellIntegration = {
        #  enableZshIntegration = true;
        #};
        #theme = "Dracula";
      #};
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

  # dotfiles
  home.file = {
    ".p10k.zsh".source = Configs/.p10k.zsh;
    ".zshrc".source = Configs/.zshrc;
    ".gtkrc-2.0".source = Configs/.gtkrc-2.0;
    ".icons".source = Configs/.icons;
    ".local/share/dolphin".source = Configs/.local/share/dolphin;
    ".local/share/kxmlgui5".source = Configs/.local/share/kxmlgui5;
    ".config/dolphinrc".source = Configs/.config/dolphinrc;
    ".config/dunst".source = Configs/.config/dunst;
    ".config/gtk-3.0".source = Configs/.config/gtk-3.0;
    ".config/hypr".source = Configs/.config/hypr;
    ".config/kdeglobals".source = Configs/.config/kdeglobals;
    ".config/kitty".source = Configs/.config/kitty;
    ".config/Kvantum".source = Configs/.config/Kvantum;
    ".config/MangoHud".source = Configs/.config/MangoHud;
    ".config/neofetch".source = Configs/.config/neofetch;
    ".config/nwg-look".source = Configs/.config/nwg-look;
    ".config/qt5ct".source = Configs/.config/qt5ct;
    ".config/rofi".source = Configs/.config/rofi;
    ".config/swaylock".source = Configs/.config/swaylock;
    ".config/swww".source = Configs/.config/swww;
    ".config/waybar".source = Configs/.config/waybar;
    ".config/wlogout".source = Configs/.config/wlogout;
    ".config/xsettingsd".source = Configs/.config/xsettingsd;
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/luna/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };
  
  #xdg.systemDirs.data = ["~/.nix-profile/share"];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
