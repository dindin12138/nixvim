{
  # Import all your plugins here
  imports = [
    ./nix.nix
    ./lua.nix
    ./clangd.nix
    ./pyright.nix
    ./ruff.nix
  ];

  plugins = {
    lsp = {
      enable = true;
      # capabilities = true;
      inlayHints = true;
      # onAttach = "";
    };
  };
}
