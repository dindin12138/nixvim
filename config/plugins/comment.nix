{
  plugins.comment = {
    enable = true;
    lazyLoad.settings = {
      keys = [
        {
          __unkeyed-1 = "<C-/>";
          __unkeyed-2.__raw = ''
            function()
              require("Comment.api").toggle.linewise.current()
            end
          '';
          mode = "n";
          desc = "Toggle comment";
        }
        {
          __unkeyed-1 = "<leader>/";
          __unkeyed-2.__raw = ''
            function()
              require("Comment.api").toggle.linewise.current()
            end
          '';
          mode = "n";
          desc = "Toggle comment";
        }
        {
          __unkeyed-1 = "<C-/>";
          __unkeyed-2 = "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
          mode = "v";
          desc = "Toggle comment";
        }
        {
          __unkeyed-1 = "<leader>/";
          __unkeyed-2 = "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
          mode = "v";
          desc = "Toggle comment";
        }
      ];
    };
  };
}
