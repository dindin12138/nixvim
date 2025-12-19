{
  plugins.neo-tree = {
    enable = true;
    lazyLoad.settings.cmd = [ "Neotree" ];
    settings = {
      window = {
        width = 25;
        mappings = {
          "l" = "open";
        };
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Explorer NeoTree";
        silent = true;
      };
    }
  ];
}
