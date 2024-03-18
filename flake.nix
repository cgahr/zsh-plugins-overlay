{
  description = "overlay for zsh-plugins";

  inputs = {
    powerlevel10k = {
      type = "github";
      owner = "romkatv";
      repo = "powerlevel10k";
      flake = false;
    };

    nix-shell = {
      type = "github";
      owner = "chisui";
      repo = "zsh-nix-shell";
      flake = false;
    };

    nix-zsh-completions = {
      type = "github";
      owner = "nix-community";
      repo = "nix-zsh-completions";
      flake = false;
    };

    zsh-autosuggestions = {
      type = "github";
      owner = "zsh-users";
      repo = "zsh-autosuggestions";
      flake = false;
    };

    zsh-syntax-highlighting = {
      type = "github";
      owner = "zsh-users";
      repo = "zsh-syntax-highlighting";
      flake = false;
    };
  };

  outputs = {...} @ inputs: {
    overlay = final: prev: {
      zsh-plugins = {
        powerlevel10k = {
          name = "powerlevel10k";
          file = "powerlevel10k.zsh-theme";
          src = inputs.powerlevel10k;
        };
        nix-shell = {
          name = "nix-shell";
          file = "nix-shell.plugin.zsh";
          src = inputs.nix-shell;
        };
        nix-zsh-completions = {
          name = "nix-zsh-completions";
          file = "nix-zsh-completions.plugin.zsh";
          src = inputs.nix-zsh-completions;
        };
        zsh-autosuggestions = {
          name = "zsh-autosuggestions";
          file = "zsh-autosuggestions.plugin.zsh";
          src = inputs.zsh-autosuggestions;
        };
        zsh-syntax-highlighting = {
          name = "zsh-syntax-highlighting";
          file = "zsh-syntax-highlighting.plugin.zsh";
          src = inputs.zsh-syntax-highlighting;
        };
      };
    };
  };
}
