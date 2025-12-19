{
  plugins.gitsigns = {
    enable = true;
    lazyLoad.settings.event = [
      "BufReadPre"
      "BufNewFile"
    ];
    settings = {
      trouble = false;
      current_line_blame = true;
      current_line_blame_opts.delay = 100;
    };
  };
}
