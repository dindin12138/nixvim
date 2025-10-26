{
  keymaps = [
    # { mode = [ "n" ]; key = ""; action = ""; options = { desc = ""; silent = true; };}

    {
      mode = [ "i" ];
      key = "jk";
      action = "<Esc>";
      options = {
        silent = true;
      };
    }

    # better up/down
    {
      mode = [
        "n"
        "x"
      ];
      key = "j";
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<Down>";
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "k";
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<Up>";
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        expr = true;
        silent = true;
      };
    }

    # Move to window using the <ctrl> hjkl keys
    {
      mode = [ "n" ];
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        desc = "Go to left window";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        desc = "Go to lower window";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        desc = "Go to upper window";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        desc = "Go to right window";
        silent = true;
      };
    }

    # -- Terminal Mappings
    {
      mode = [ "t" ];
      key = "<esc><esc>";
      action = "<C-\\><C-n>";
      options = {
        desc = "Enter Normal Mode";
        silent = true;
      };
    }
    {
      mode = [ "t" ];
      key = "<C-h>";
      action = "<cmd>wincmd h<cr>";
      options = {
        desc = "Go to left window";
        silent = true;
      };
    }
    {
      mode = [ "t" ];
      key = "<C-j>";
      action = "<cmd>wincmd j<cr>";
      options = {
        desc = "Go to lower window";
        silent = true;
      };
    }
    {
      mode = [ "t" ];
      key = "<C-k>";
      action = "<cmd>wincmd k<cr>";
      options = {
        desc = "Go to upper window";
        silent = true;
      };
    }
    {
      mode = [ "t" ];
      key = "<C-l>";
      action = "<cmd>wincmd l<cr>";
      options = {
        desc = "Go to right window";
        silent = true;
      };
    }

    # quick move
    {
      mode = [ "n" ];
      key = "<S-j>";
      action = "5j";
      options = {
        desc = "Fast down";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-k>";
      action = "5k";
      options = {
        desc = "Fast up";
        silent = true;
      };
    }
    {
      mode = [ "i" ];
      key = "<C-b>";
      action = "<esc>I";
      options = {
        desc = "Move to beginning of line";
        silent = true;
      };
    }
    {
      mode = [ "i" ];
      key = "<C-e>";
      action = "<end>";
      options = {
        desc = "Move to end of line";
        silent = true;
      };
    }
    {
      mode = [ "i" ];
      key = "<C-h>";
      action = "<Left>";
      options = {
        desc = "Move Left";
        silent = true;
      };
    }
    {
      mode = [ "i" ];
      key = "<C-j>";
      action = "<Down>";
      options = {
        desc = "Move Down";
        silent = true;
      };
    }
    {
      mode = [ "i" ];
      key = "<C-k>";
      action = "<Up>";
      options = {
        desc = "Move Up";
        silent = true;
      };
    }
    {
      mode = [ "i" ];
      key = "<C-l>";
      action = "<Right>";
      options = {
        desc = "Move Right";
        silent = true;
      };
    }

    # Resize window using <ctrl> arrow keys
    {
      mode = [ "n" ];
      key = "<C-Up>";
      action = "<cmd>resize +2<cr>";
      options = {
        desc = "Increase window height";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<C-Down>";
      action = "<cmd>resize -2<cr>";
      options = {
        desc = "Decrease window height";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<C-Left>";
      action = "<cmd>vertical resize -2<cr>";
      options = {
        desc = "Decrease window width";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<C-Right>";
      action = "<cmd>vertical resize +2<cr>";
      options = {
        desc = "Increase window width";
        silent = true;
      };
    }

    # Split windows
    {
      mode = [ "n" ];
      key = "<leader>sj";
      action = "<C-w>s";
      options = {
        desc = "Split window blow";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sl";
      action = "<C-w>v";
      options = {
        desc = "Split window right";
        silent = true;
      };
    }

    # Move Lines
    {
      mode = [ "v" ];
      key = "<S-j>";
      action = ":m '>+1<cr>gv=gv";
      options = {
        desc = "Move down";
        silent = true;
      };
    }
    {
      mode = [ "v" ];
      key = "<S-k>";
      action = ":m '<-2<cr>gv=gv";
      options = {
        desc = "Move up";
        silent = true;
      };
    }

    # buffers
    {
      mode = [ "n" ];
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Prev buffer";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Next buffer";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Prev buffer";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Next buffer";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>q";
      action = "<cmd>Bdelete!<cr>";
      options = {
        desc = "Delete buffer";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>x";
      action = "<cmd>BufferLinePickClose<cr>";
      options = {
        desc = "Close the selected buffer";
        silent = true;
      };
    }

    # Clear search with <esc>
    {
      mode = [
        "i"
        "n"
      ];
      key = "<esc>";
      action = "<cmd>noh<cr><esc>";
      options = {
        desc = "Escape and clear hlsearch";
        silent = true;
      };
    }

    # save file
    {
      mode = [
        "i"
        "x"
        "n"
        "s"
      ];
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        desc = "Save file";
        silent = true;
      };
    }
    {
      mode = [
        "x"
        "n"
        "s"
      ];
      key = "W";
      action = "<cmd>w<cr><esc>";
      options = {
        desc = "Save file";
        silent = true;
      };
    }

    # quit quickly
    {
      mode = [ "n" ];
      key = "Q";
      action = "<cmd>qa<cr>";
      options = {
        desc = "Quit all";
        silent = true;
      };
    }

    # better indenting
    {
      mode = [ "v" ];
      key = "<";
      action = "<gv";
      options = {
        desc = "Indent forward";
        silent = true;
      };
    }
    {
      mode = [ "v" ];
      key = ">";
      action = ">gv";
      options = {
        desc = "Indent backward";
        silent = true;
      };
    }

    # close
    {
      mode = [ "n" ];
      key = "<leader>c";
      action = "<cmd>close<cr>";
      options = {
        desc = "Close this window";
        silent = true;
      };
    }

    # Telescope
    {
      mode = [ "n" ];
      key = "<leader>fb";
      action = "<cmd>Telescope buffers<cr>";
      options = {
        desc = "Buffers";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<cr>";
      options = {
        desc = "Live grep";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<cr>";
      options = {
        desc = "Find files";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fa";
      action = "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>";
      options = {
        desc = "Find all files";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fo";
      action = "<cmd>Telescope oldfiles<cr>";
      options = {
        desc = "Oldfiles";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fp";
      action = "<cmd>Telescope projects<cr>";
      options = {
        desc = "Projects";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<cr>";
      options = {
        desc = "Help page";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fc";
      action = "<cmd>Telescope git_commits<cr>";
      options = {
        desc = "Git commits";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fs";
      action = "<cmd>Telescope git_status<cr>";
      options = {
        desc = "Git status";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fk";
      action = "<cmd>Telescope keymaps<cr>";
      options = {
        desc = "Keymaps";
        silent = true;
      };
    }

    # Tree
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Explorer NeoTree";
        silent = true;
      };
    }

    # LSP
    {
      mode = [ "n" ];
      key = "<leader>li";
      action = "<cmd>LspInfo<cr>";
      options = {
        desc = "LspInfo";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ll";
      action = "<cmd>LspLog<cr>";
      options = {
        desc = "LspLog";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lr";
      action = "<cmd>LspRestart<cr>";
      options = {
        desc = "LspRestart";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lf";
      action = {
        __raw = ''
          function()
            require("conform").format()
          end
        '';
      };
      options = {
        desc = "Format";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>lt";
      action = "<cmd>TroubleToggle<cr>";
      options = {
        desc = "Trouble";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>la";
      action = "<cmd>AerialToggle<cr>";
      options = {
        desc = "AerialToggle";
        silent = true;
      };
    }

    # whick-key
    {
      mode = [ "n" ];
      key = "?";
      action = {
        __raw = ''
          function()
            require("which-key").show({ global = false })
          end
        '';
      };
      options = {
        desc = "Buffer Local Keymaps (which-key)";
        silent = true;
      };
    }

    # Comment
    {
      mode = [ "n" ];
      key = "<C-/>";
      action = {
        __raw = ''
          function()
            require("Comment.api").toggle.linewise.current()
          end
        '';
      };
      options = {
        desc = "Toggle comment";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>/";
      action = {
        __raw = ''
          function()
            require("Comment.api").toggle.linewise.current()
          end
        '';
      };
      options = {
        desc = "Toggle comment";
        silent = true;
      };
    }
    {
      mode = [ "v" ];
      key = "<C-/>";
      action = "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>";
      options = {
        desc = "Toggle comment";
        silent = true;
      };
    }
    {
      mode = [ "v" ];
      key = "<leader>/";
      action = "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>";
      options = {
        desc = "Toggle comment";
        silent = true;
      };
    }
  ];
}
