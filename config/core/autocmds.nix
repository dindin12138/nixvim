{
  autoCmd = [
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
  ];
}
