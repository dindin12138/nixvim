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
          custom_filter = ''
            function(buf_number, buf_numbers)
              -- filter out filetypes you don't want to see
              if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
                  return true
              end
              -- filter out by buffer name
              if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
                  return true
              end
              -- filter out based on arbitrary rules
              -- e.g. filter out vim wiki buffer from tabline in your work repo
              if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
                  return true
              end
              -- filter out by it's index number in list (don't show first buffer)
              if buf_numbers[1] ~= buf_number then
                  return true
              end
            end
          '';
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
          enforce_regular_tabs = false;
          get_element_icon = ''
            function(element)
              -- element consists of {filetype: string, path: string, extension: string, directory: string}
              -- This can be used to change how bufferline fetches the icon
              -- for an element e.g. a buffer or a tab.
              -- e.g.
              local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
              return icon, hl
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
          # numbers = {
          #   __raw = ''
          #     function(opts)
          #       return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
          #     end
          #   '';
          # };
          offsets = [{
            filetype = "neo-tree";
            highlight = "Directory";
            text = "File Explorer";
            text_align = "center";
          }];
          persist_buffer_sort = true;
          right_trunc_marker = "";
          separator_style = [ "|" "|" ];
          show_buffer_close_icons = true;
          show_buffer_icons = true;
          show_close_icon = true;
          show_tab_indicators = true;
          sort_by = {
            __raw = ''
              function(buffer_a, buffer_b)
                  local modified_a = vim.fn.getftime(buffer_a.path)
                  local modified_b = vim.fn.getftime(buffer_b.path)
                  return modified_a > modified_b
              end
            '';
          };
          tab_size = 18;
        };
      };
    };
  };
}
