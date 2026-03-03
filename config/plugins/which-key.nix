{
  plugins.which-key = {
    enable = true;
    autoLoad = true;
    settings = {
      win.border = "rounded";
      icons.colors = false;
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
