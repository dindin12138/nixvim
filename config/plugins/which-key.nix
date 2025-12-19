{
  plugins.which-key = {
    enable = true;
    autoLoad = true;
    settings = {
      win.border = "rounded";
      icons.colors = false;
      spec = [
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
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "?";
      action = {
        __raw = ''
          function()
            require("which-key").show({ global = false })
          end
        '';
      };
      options = {
        desc = "Buffer Local Keymaps (which-key)";
        silent = true;
      };
    }
  ];
}
