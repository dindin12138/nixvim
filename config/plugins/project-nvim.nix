{
  plugins = {
    project-nvim = {
      enable = true;
      enableTelescope = true;
      settings = {
        detection_methods = [ "pattern" ];
        excludeDirs = [ "~/.local/*" ];
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
  };
}
