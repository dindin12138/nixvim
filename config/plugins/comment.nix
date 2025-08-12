{
  plugins = {
    comment = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = { keys = [ "<C-/>" "<leader>/" ]; };
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-/>";
      action = {
        __raw = ''
          function()
            require("Comment.api").toggle.linewise.current()
          end
        '';
      };
      options = { desc = "Toggle comment"; };
    }
    {
      mode = [ "n" ];
      key = "<leader>/";
      action = {
        __raw = ''
          function()
            require("Comment.api").toggle.linewise.current()
          end
        '';
      };
      options = { desc = "Toggle comment"; };
    }
  ];
}
