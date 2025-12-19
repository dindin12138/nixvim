{
  # Import all your plugins here
  imports = [
    ./nix.nix
    ./lua.nix
    ./cpp.nix
    ./python.nix
    ./go.nix
    ./rust.nix
    ./bash.nix
  ];

  plugins.lsp = {
    enable = true;
    lazyLoad = {
      settings = {
        event = [
          "BufReadPre"
          "BufNewFile"
        ];
        cmd = [
          "LspInfo"
          "LspInstall"
          "LspStart"
          "LspRestart"
          "LspLog"
        ];
      };
    };
    # capabilities = true;
    inlayHints = true;
    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
        "ge" = "open_float";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "declaration";
        "gr" = "references";
        "gh" = "hover";
        "gs" = "signature_help";
        "gn" = "rename";
        "ga" = "code_action";
      };
      extra = [ ];
    };
    onAttach = ''
      vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
      -- Highlight symbol under cursor
      if client.server_capabilities.documentHighlightProvider then
        vim.api.nvim_create_augroup("lsp_document_highlight", { clear = false })
        vim.api.nvim_clear_autocmds({ buffer = bufnr, group = "lsp_document_highlight" })
        vim.api.nvim_create_autocmd(
          { "CursorHold", "CursorHoldI" },
          { group = "lsp_document_highlight", buffer = bufnr, callback = vim.lsp.buf.document_highlight }
        )
        vim.api.nvim_create_autocmd(
          { "CursorMoved", "CursorMovedI" },
          { group = "lsp_document_highlight", buffer = bufnr, callback = vim.lsp.buf.clear_references }
        )
      end
    '';
    luaConfig.post = ''
      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or "rounded"
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end

      vim.diagnostic.config({
        virtual_text = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = "󰛩 ",
            [vim.diagnostic.severity.INFO] = " ",
          },
        },
      })
    '';
  };
  keymaps = [
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
  ];
}
