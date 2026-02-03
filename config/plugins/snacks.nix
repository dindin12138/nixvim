{
  plugins.snacks = {
    enable = true;
    settings = {
      input.enabled = true;
      bigfile.enabled = true;
      quickfile.enabled = true;
      words.enabled = true;
      picker = {
        enabled = true;
        ui_select = true;
      };
      dashboard = {
        enabled = true;
        width = 40;
        preset = {
          keys = [
            {
              icon = " ";
              key = "p";
              desc = "Projects";
              action = ":lua Snacks.picker.projects()";
            }
            {
              icon = "󰕰 ";
              key = "s";
              desc = "Restore Session";
              action = ":lua require('persistence').select()";
            }
            {
              icon = " ";
              key = "o";
              desc = "Recent Files";
              action = ":lua Snacks.picker.recent()";
            }
            {
              icon = " ";
              key = "f";
              desc = "Find Files";
              action = ":lua Snacks.picker.files()";
            }
            {
              icon = " ";
              key = "n";
              desc = "New File";
              action = ":ene | startinsert";
            }
            {
              icon = " ";
              key = "q";
              desc = "Quit";
              action = ":qa";
            }
          ];
        };
        sections = [
          { section = "header"; }
          {
            section = "keys";
            gap = 1;
            padding = 2;
          }
          {
            icon = " ";
            title = "Talk is cheap. Show me the code.";
            align = "center";
            padding = 1;
          }
        ];
      };
      styles = {
        input = {
          relative = "cursor";
          row = -3;
          col = 0;
          width = 30;
          backdrop = false;
        };
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>q";
      action.__raw = "function() require('snacks').bufdelete() end";
      options = {
        desc = "Delete buffer";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fp";
      action = "<cmd>lua Snacks.picker.projects()<CR>";
      options = {
        desc = "Projects";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fk";
      action = "<cmd>lua Snacks.picker.keymaps()<CR>";
      options = {
        desc = "Keymaps";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fb";
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      options = {
        desc = "Buffers";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fg";
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      options = {
        desc = "Live grep";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ff";
      action = "<cmd>lua Snacks.picker.files()<CR>";
      options = {
        desc = "Find files";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fo";
      action = "<cmd>lua Snacks.picker.recent()<CR>";
      options = {
        desc = "Oldfiles";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fh";
      action = "<cmd>lua Snacks.picker.help()<CR>";
      options = {
        desc = "Help page";
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fc";
      action = "<cmd>lua Snacks.picker.git_log()<CR>";
      options = {
        desc = "Git commits";
        silent = true;
      };
    }
  ];
}
