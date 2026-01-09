{
  plugins.project-nvim = {
    enable = true;
    enableTelescope = true;
    settings = {
      excludeDirs = [
        "~/.local/*"
        "/nix/store/*"
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
