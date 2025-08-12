{
  plugins = {
    gitsigns = {
      enable = true;
      # lazyLoad = {
      #   enable = true;
      #   settings = { lazy = true; };
      # };
      settings = {
        trouble = false;
        current_line_blame = true;
        current_line_blame_opts.delay = 100;
      };
    };
  };
}
