{
  # Import all your plugins here
  imports = [ ./nix.nix ./lua.nix ./clangd.nix ];

  plugins = {
    lsp = {
      enable = true;
      # capabilities = true;
      inlayHints = true;
      # onAttach = "";
    };
  };
}
