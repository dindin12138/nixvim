{
  # Import all your plugins here
  imports = [
    ./nix.nix
    ./lua.nix
    ./clangd.nix
    ./pyright.nix
    ./ruff.nix
  ];

  plugins = {
    lsp = {
      enable = true;
      # capabilities = true;
      inlayHints = true;
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
        -- Disable hover in favor of Pyright
        if client.name == "ruff" then
          client.server_capabilities.hoverProvider = false
        end
      '';
    };
  };
  extraConfigLua = ''
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or "rounded"
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
    })
    local signs = {
      Error = " ",
      Warn = " ",
      Hint = "󰛩 ",
      Info = " ",
    }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  '';
}
