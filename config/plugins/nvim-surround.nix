{
  plugins.nvim-surround = {
    enable = true;
    lazyLoad.settings.event = [
      "BufReadPost"
      "BufNewFile"
    ];
  };
  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "ys";
      mode = "n";
      desc = "Add Surround";
      icon = "";
    }
    {
      __unkeyed-1 = "ds";
      mode = "n";
      desc = "Delete Surround";
      icon = "";
    }
    {
      __unkeyed-1 = "cs";
      mode = "n";
      desc = "Change Surround";
      icon = "";
    }
    {
      __unkeyed-1 = "yss";
      mode = "n";
      desc = "Add Surround Line";
      icon = "";
    }
    {
      __unkeyed-1 = "gs";
      mode = "x";
      desc = "Add Surround (Visual)";
      icon = "";
    }
  ];
  keymaps = [
    {
      mode = "x";
      key = "gs";
      action = "<Plug>(nvim-surround-visual)";
      options = {
        desc = "Add a surrounding pair around a visual selection";
        silent = true;
      };
    }
  ];
}
