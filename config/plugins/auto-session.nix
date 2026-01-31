{
  plugins.auto-session = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = [ "VimEnter" ];
        cmd = [ "AutoSession" ];
      };
    };
    settings = {
      bypass_save_filetypes = [
        "alpha"
        "dashboard"
        "snacks_dashboard"
      ];
      use_git_branch = true;
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>ws";
      action = "<cmd>AutoSession save<CR>";
      options = {
        desc = "SessionSave";
        silent = true;
      };
    }
  ];
}
