{
  plugins.fzf-lua = {
    enable = true;
    profile = "telescope";
    lazyLoad.settings.cmd = [ "FzfLua" ];
    settings = {
      winopts = {
        height = 0.95;
        width = 0.95;
        row = 0.35;
        col = 0.50;
        preview = {
          layout = "horizontal";
          horizontal = "right:55%";
          scrollbar = "float";
        };
      };
      fzf_opts = {
        "--layout" = "reverse";
        "--info" = "inline";
      };
      keymap = {
        fzf = {
          "ctrl-j" = "down";
          "ctrl-k" = "up";
          "ctrl-n" = "next-history";
          "ctrl-p" = "previous-history";
          "ctrl-u" = "preview-page-up";
          "ctrl-d" = "preview-page-down";
          "ctrl-c" = "abort";
        };
        builtin = {
          "<C-c>" = "hide";
          "<C-u>" = "preview-page-up";
          "<C-d>" = "preview-page-down";
        };
      };
      files = {
        prompt = "Files❯ ";
        formatter = "path.filename_first";
      };
    };
  };
}
