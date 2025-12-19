{
  plugins.fzf-lua = {
    enable = true;
    lazyLoad.settings.cmd = [ "FzfLua" ];
    profile = "telescope";
    luaConfig.post = ''
      require("fzf-lua").register_ui_select()
    '';
    settings = {
      # register_ui_select = true;
      winopts = {
        height = 0.85;
        width = 0.85;
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
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>fb";
      action = "<cmd>FzfLua buffers<cr>";
      options = {
        desc = "Buffers";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fg";
      action = "<cmd>FzfLua live_grep<cr>";
      options = {
        desc = "Live grep";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ff";
      action = "<cmd>FzfLua files<cr>";
      options = {
        desc = "Find files";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fo";
      action = "<cmd>FzfLua oldfiles<cr>";
      options = {
        desc = "Oldfiles";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fh";
      action = "<cmd>FzfLua helptags<cr>";
      options = {
        desc = "Help page";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fc";
      action = "<cmd>FzfLua git_commits<cr>";
      options = {
        desc = "Git commits";
        silent = true;
      };
    }
  ];
}
