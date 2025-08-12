{
  plugins = {
    neo-tree = {
      enable = true;
      # lazyLoad = {
      #   enable = true;
      #   settings = { cmd = [ "Neotree" ]; };
      # };
      window = {
        width = 25;
        mappings = { "l" = "open"; };
      };
    };
  };
  keymaps = [{
    mode = [ "n" ];
    key = "<leader>e";
    action = "<cmd>Neotree toggle<cr>";
    options = { desc = "Explorer NeoTree"; };
  }];
}
