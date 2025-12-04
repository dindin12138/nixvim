{
  plugins = {
    aerial = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          cmd = [ "AerialToggle" ];
        };
      };
      settings = {
        attach_mode = "global";
        backends = [
          "treesitter"
          "lsp"
          "markdown"
          "man"
        ];
        show_guides = true;
        layout = {
          min_width = 28;
        };
      };

    };
  };
}
