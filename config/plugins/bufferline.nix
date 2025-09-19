{
  plugins = {
    web-devicons.enable = true;
    bufdelete = {
      enable = true;
      # lazyLoad.cmd = "Bdelete";
    };
    bufferline = {
      enable = true;
      # lazyLoad = {
      #   enable = true;
      #   settings = { event = [ "BufReadPost" "BufNewFile" ]; };
      # };
      settings = {
        options = {
          close_command = "Bdelete! %d";
          right_mouse_command = "Bdelete! %d";
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
          sort_by = {
            __raw = ''
              function(buffer_a, buffer_b)
                  local modified_a = vim.fn.getftime(buffer_a.path)
                  local modified_b = vim.fn.getftime(buffer_b.path)
                  return modified_a > modified_b
              end
            '';
          };
        };
      };
    };
  };
}
