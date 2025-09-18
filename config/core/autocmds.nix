{
  autoGroups = {
    UserLspConfig = {};
    GitSignsLazyLoad = { clear = true; };
  };
  autoCmd = [
    {
      event = "LspAttach";
      group = "UserLspConfig";
      callback = {
        __raw = ''
          function(ev)
            -- Enable completion triggered by <c-x><c-o>
            vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
            -- Buffer local mappings.
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local map = vim.keymap.set
            -- local bufopts = { noremap = true, silent = true, buffer = ev.buf }
            map("n", "ga", "<CMD>lua vim.lsp.buf.code_action()<CR>",
              { desc = "Code action", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gn", "<CMD>lua vim.lsp.buf.rename()<CR>",
              { desc = "Rename", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>",
              { desc = "Definition", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>",
              { desc = "Declaration", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gh", "<CMD>lua vim.lsp.buf.hover()<CR>", { desc = "Hover", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gs", "<CMD>lua vim.lsp.buf.signature_help()<CR>",
              { desc = "Signature help", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>",
              { desc = "References", noremap = true, silent = true, buffer = ev.buf })
            map("n", "ge", "<CMD>lua vim.diagnostic.open_float()<CR>",
              { desc = "Open float diagnostics", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gj", "<CMD>lua vim.diagnostic.goto_next()<CR>",
              { desc = "Goto next diagnostic", noremap = true, silent = true, buffer = ev.buf })
            map("n", "gk", "<CMD>lua vim.diagnostic.goto_prev()<CR>",
              { desc = "Goto prev diagnostic", noremap = true, silent = true, buffer = ev.buf })
          end
        '';
      };
    }

    # Reopen the buffer to restore the cursor position
    {
      event = "BufReadPost";
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
              vim.fn.setpos(".", vim.fn.getpos("'\""))
              vim.cmd("silent! foldopen")
            end
          end
        '';
      };
    }

    # Close new line comments
    {
      event = "BufEnter";
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
          end
        '';
      };
    }

    # use conform.format() just like you would vim.lsp.buf.format()
    {
      event = "BufWritePre";
      pattern = "*";
      callback = {
        __raw = ''
          function(args)
            require("conform").format({ bufnr = args.buf, lsp_fallback = true })
          end
        '';
      };
    }
  ];
}
