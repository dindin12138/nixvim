{
  plugins.nvim-surround = {
    enable = true;
    lazyLoad.settings.event = [
      "BufReadPost"
      "BufNewFile"
    ];
    settings = {
      keymaps = {
        visual = "gs";
      };
    };
  };
}
