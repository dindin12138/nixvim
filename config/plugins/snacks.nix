{
  plugins.snacks = {
    enable = true;
    settings = {
      input = {
        enabled = true;
      };
      styles = {
        input = {
          relative = "cursor";
          row = -3;
          col = 0;
          width = 30;
          backdrop = false;
        };
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>q";
      action.__raw = "function() require('snacks').bufdelete() end";
      options = {
        desc = "Delete buffer";
        silent = true;
      };
    }
  ];
}
