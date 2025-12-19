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
    # Auto set by vim-tmux-navigator
    # {
    #   mode = [ "n" ];
    #   key = "<C-h>";
    #   action = "<C-w>h";
    #   options = {
    #     desc = "Go to left window";
    #     silent = true;
    #   };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "<C-j>";
    #   action = "<C-w>j";
    #   options = {
    #     desc = "Go to lower window";
    #     silent = true;
    #   };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "<C-k>";
    #   action = "<C-w>k";
    #   options = {
    #     desc = "Go to upper window";
    #     silent = true;
    #   };
    # }
    # {
    #   mode = [ "n" ];
    #   key = "<C-l>";
    #   action = "<C-w>l";
    #   options = {
    #     desc = "Go to right window";
    #     silent = true;
    #   };
    # }

    # -- Terminal Mappings
    # {
    #   mode = [ "t" ];
    #   key = "<C-h>";
    #   action = "<cmd>wincmd h<cr>";
    #   options = {
    #     desc = "Go to left window";
    #     silent = true;
    #   };
    # }
    # {
    #   mode = [ "t" ];
    #   key = "<C-j>";
    #   action = "<cmd>wincmd j<cr>";
    #   options = {
    #     desc = "Go to lower window";
    #     silent = true;
    #   };
    # }
    # {
    #   mode = [ "t" ];
    #   key = "<C-k>";
    #   action = "<cmd>wincmd k<cr>";
    #   options = {
    #     desc = "Go to upper window";
    #     silent = true;
    #   };
    # }
    # {
    #   mode = [ "t" ];
    #   key = "<C-l>";
    #   action = "<cmd>wincmd l<cr>";
    #   options = {
    #     desc = "Go to right window";
    #     silent = true;
    #   };
    # }

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
  ];
}
