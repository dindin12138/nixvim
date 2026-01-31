{
  plugins.project-nvim = {
    enable = true;
    enableTelescope = true;
    lazyLoad = {
      enable = true;
      settings = {
        event = [ "VimEnter" ];
      };
    };
    settings = {
      exclude_dirs = [
        "~/.local/*"
        "/nix/store/*"
        "~/.cargo/*"
      ];
      patterns = [
        "README.md"
        "Cargo.toml"
        ".sln"
        ".git"
        "_darcs"
        ".hg"
        ".bzr"
        ".svn"
        "Makefile"
      ];
    };
  };
}
