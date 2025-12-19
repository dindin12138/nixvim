{
  plugins.web-devicons.enable = true;
  plugins.bufferline = {
    enable = true;
    lazyLoad.settings = {
      event = [
        "BufReadPost"
        "BufNewFile"
        "BufEnter"
      ];
    };
    settings = {
      options = {
        close_command = {
          __raw = "function(n) require('snacks').bufdelete(n) end";
        };
        right_mouse_command = {
          __raw = "function(n) require('snacks').bufdelete(n) end";
        };
        always_show_bufferline = true;
        buffer_close_icon = "󰅖";
        close_icon = "";
        diagnostics = "nvim_lsp";
        diagnostics_indicator = ''
          function(count, level, diagnostics_dict, context)
            local s = ""
            for e, n in pairs(diagnostics_dict) do
              local sym = e == "error" and " "
                or (e == "warning" and " " or "" )
              if(sym ~= "") then
                s = s .. " " .. n .. sym
              end
            end
            return s
          end
        '';
        indicator = {
          icon = "▎";
          style = "icon";
        };
        left_trunc_marker = "";
        max_name_length = 18;
        max_prefix_length = 15;
        mode = "buffers";
        modified_icon = "●";
        numbers = "ordinal";
        offsets = [
          {
            filetype = "neo-tree";
            highlight = "Directory";
            text = "File Explorer";
            text_align = "center";
          }
        ];
        persist_buffer_sort = true;
        right_trunc_marker = "";
        separator_style = [
          "|"
          "|"
        ];
        sort_by = "insert_after_current";
      };
    };
  };
  keymaps = [
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
      key = "<leader>x";
      action = "<cmd>BufferLinePickClose<cr>";
      options = {
        desc = "Close the selected buffer";
        silent = true;
      };
    }
  ];
}
