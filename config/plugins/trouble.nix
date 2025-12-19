{
  plugins.trouble = {
    enable = true;
    lazyLoad.settings.cmd = [
      "Trouble"
    ];
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>lt";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        desc = "Trouble";
        silent = true;
      };
    }
  ];
}
