{
  plugins.auto-session = {
    enable = true;
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
