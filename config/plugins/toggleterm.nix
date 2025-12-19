{
  plugins.toggleterm = {
    enable = true;
    lazyLoad.settings = {
      cmd = [ "ToggleTerm" ];
      keys = [
        {
          __unkeyed-1 = "<leader>t";
          __unkeyed-2 = "<cmd>lua _lazygit_toggle()<CR>";
          mode = "n";
          desc = "Lazygit";
        }
      ];
    };
    settings = {
      open_mapping = "[[<c-\\>]]";
      float_opts = {
        border = "curved";
      };
      highlights = {
        FloatBorder = {
          link = "FloatBorder";
        };
        NormalFloat = {
          link = "NormalFloat";
        };
      };
    };
    luaConfig.post = ''
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new({
        cmd = "lazygit",
        dir = "git_dir",
        direction = "float",
        on_open = function(term)
          vim.cmd("startinsert!")
          vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
        end,
        on_close = function(term)
          vim.cmd("startinsert!")
        end,
      })
      function _lazygit_toggle()
        lazygit:toggle()
      end
    '';
  };
  keymaps = [
    {
      mode = [ "t" ];
      key = "<esc><esc>";
      action = "<C-\\><C-n>";
      options = {
        desc = "Enter Normal Mode";
        silent = true;
      };
    }
  ];
}
