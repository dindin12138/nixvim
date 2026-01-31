{
  plugins.friendly-snippets.enable = true;
  plugins.blink-cmp = {
    enable = true;
    lazyLoad = {
      settings = {
        event = [
          "InsertEnter"
          "CmdlineEnter"
        ];
      };
    };
    setupLspCapabilities = false;
    settings = {
      completion = {
        keyword = {
          range = "full";
        };
        list = {
          selection = {
            auto_insert = true;
            preselect = false;
          };
        };
        documentation = {
          auto_show = true;
          auto_show_delay_ms = 500;
        };
        menu = {
          border = "rounded";
        };
        documentation = {
          window = {
            border = "rounded";
          };
        };
      };
      signature = {
        window = {
          border = "rounded";
        };
      };
      cmdline = {
        completion = {
          ghost_text = {
            enabled = true;
          };
          menu = {
            auto_show = {
              __raw = ''
                function(ctx)
                    return vim.fn.getcmdtype() == ':'
                    -- enable for inputs as well, with:
                    -- or vim.fn.getcmdtype() == '@'
                end,
              '';
            };
          };
        };
        keymap = {
          "<CR>" = [
            "select_and_accept"
            "fallback"
          ];
          "<C-j>" = [
            "select_next"
            "fallback"
          ];
          "<C-k>" = [
            "select_prev"
            "fallback"
          ];
        };
      };
      sources = {
        providers = {
          cmdline = {
            min_keyword_length = {
              __raw = ''
                function(ctx)
                    if ctx.mode == 'cmdline' and string.find(ctx.line, ' ') == nil then return 3 end
                    return 0
                end
              '';
            };
          };
        };
      };
      keymap = {
        "<CR>" = [
          "accept"
          "fallback"
        ];
        "<C-u>" = [
          "scroll_documentation_up"
          "fallback"
        ];
        "<C-d>" = [
          "scroll_documentation_down"
          "fallback"
        ];
        "<C-j>" = [
          "select_next"
          "fallback"
        ];
        "<C-k>" = [
          "select_prev"
          "fallback"
        ];
        "<Down>" = [
          "select_next"
          "fallback"
        ];
        "<Up>" = [
          "select_prev"
          "fallback"
        ];
        "<Tab>" = [
          "select_next"
          "snippet_forward"
          "fallback"
        ];
        "<S-Tab>" = [
          "select_prev"
          "snippet_backward"
          "fallback"
        ];
        "<C-e>" = [ "hide" ];
        "<C-b>" = [
          "show"
          "show_documentation"
          "hide_documentation"
        ];
      };
    };
  };
}
