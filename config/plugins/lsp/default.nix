{ lib }: {
  # Import all your plugins here
  imports = [ ./nix.nix ];

  lsp = {
    # onAttach = "";
    inlayHints.enable = true;
    keymaps = [
      {
        key = "gd";
        lspBufAction = "definition";
      }
      {
        key = "gD";
        lspBufAction = "references";
      }
      {
        key = "gt";
        lspBufAction = "type_definition";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
      }
      {
        key = "gh";
        lspBufAction = "hover";
      }
    ];
  };

}
