{
  plugins.project-nvim = {
    enable = true;
    enableTelescope = true;
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
