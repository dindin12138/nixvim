{
  plugins = {
    treesitter = {
      lazyLoad = {
        enable = true;
        settings = {
          event = [ "BufReadPost" "BufNewFile" ];
          cmd = [
            "TSInstall"
            "TSBufEnable"
            "TSBufDisable"
            "TSEnable"
            "TSDisable"
            "TSModuleInfo"
          ];
        };
      };
      enable = true;
      auto_install = true;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<CR>";
          node_decremental = "<CR>";
          node_incremental = "<BS>";
          scope_incremental = "<TAB>";
        };
      };
    };
  };
}

