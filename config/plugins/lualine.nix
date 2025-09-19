{
  plugins = {
    lualine = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          event = [
            "BufReadPost"
            "BufNewFile"
          ];
        };
      };
      settings = {
        options = {
          component_separators = {
            left = "";
            right = "";
          };
          section_separators = {
            left = " ";
            right = " ";
          };
        };
        sections = {
          lualine_a = [
            {
              __unkeyed-1 = "mode";
              icon = "";
            }
          ];
          lualine_b = [
            {
              __unkeyed-1 = "filetype";
              icon_only = true;
            }
            "filename"
          ];
          lualine_c = [
            {
              __unkeyed-1 = "branch";
              icon = " ";
            }
            {
              __unkeyed-1 = "diff";
              symbols = {
                added = " ";
                modified = " ";
                removed = " ";
              };
            }
          ];
          lualine_x = [
            {
              __unkeyed-1 = "diagnostics";
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = "󰛩 ";
              };
            }
            {
              __unkeyed-1 = {
                __raw = ''
                  function()
                      local msg = ""
                      local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                      local clients = vim.lsp.get_active_clients()
                      if next(clients) == nil then
                          return msg
                      end
                      for _, client in ipairs(clients) do
                          local filetypes = client.config.filetypes
                          if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                              return client.name
                          end
                      end
                      return msg
                  end
                '';
              };
              color = {
                fg = "#ffffff";
              };
              icon = "  ~";
            }
          ];
          lualine_y = [
            "fileformat"
            "encoding"
          ];
          lualine_z = [ "progress" ];
        };
        inactive_sections = {
          lualine_a = [ ];
          lualine_b = [ "filename" ];
          lualine_c = [ ];
          lualine_x = [ ];
          lualine_y = [ ];
          lualine_z = [ ];
        };
        extensions = [
          "neo-tree"
          "nvim-tree"
          "toggleterm"
          "aerial"
          "symbols-outline"
        ];
      };
    };
  };
}
