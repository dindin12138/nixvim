{
  plugins.toggleterm = {
    enable = true;
    lazyLoad.settings = {
      cmd = [ "ToggleTerm" ];
      keys = [
        {
          __unkeyed-1 = "<leader>tg";
          __unkeyed-2 = "<cmd>lua _lazygit_toggle()<CR>";
          mode = "n";
          desc = "Lazygit";
        }
        {
          __unkeyed-1 = "<leader>tt";
          __unkeyed-2 = "<cmd>ToggleTerm<CR>";
          mode = "n";
          desc = "ToggleTerm";
        }
        {
          __unkeyed-1 = "<leader>th";
          __unkeyed-2 = "<cmd>1ToggleTerm direction=horizontal<CR>";
          mode = "n";
          desc = "ToggleTerm Horizontal (ID 1)";
        }
        {
          __unkeyed-1 = "<leader>tf";
          __unkeyed-2 = "<cmd>2ToggleTerm direction=float<CR>";
          mode = "n";
          desc = "ToggleTerm Float (ID 2)";
        }
        {
          __unkeyed-1 = "<leader>tv";
          __unkeyed-2 = "<cmd>3ToggleTerm direction=vertical<CR>";
          mode = "n";
          desc = "ToggleTerm Vertical (ID 3)";
        }
        {
          __unkeyed-1 = "<leader>tp";
          __unkeyed-2 = "<cmd>4ToggleTerm direction=tab<CR>";
          mode = "n";
          desc = "ToggleTerm Page/Tab (ID 4)";
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
