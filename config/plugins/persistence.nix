{
  plugins.persistence = {
    enable = true;
    lazyLoad = {
      settings = {
        event = "BufReadPre";
      };
    };
    settings = {
      need = 1;
      branch = true;
      dir = {
        __raw = "vim.fn.stdpath('state') .. '/sessions/'";
      };
    };
  };
}
