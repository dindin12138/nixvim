{
  # Import all your plugins here
  imports = [ ./nix.nix ];

  plugins = {
    lsp = {
      enable = true;
      # capabilities = true;
      inlayHints = true;
      # onAttach = "";
    };
  };
}
