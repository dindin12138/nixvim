{
  plugins.persistence = {
    enable = true;
    lazyLoad = {
      settings = {
        event = "VimEnter";
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
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>fs";
      action = "<cmd>lua require('persistence').select()<cr>";
      options = {
        desc = "Sessions";
        silent = true;
      };
    }
  ];
}
