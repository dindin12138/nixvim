{
  plugins.lsp.servers = {
    ruff = {
      enable = true;
      onAttach.function = ''
        if client.name == 'ruff' then
          client.server_capabilities.hoverProvider = false
        end
      '';
    };
    pyright = {
      enable = true;
      settings = {
        pyright = {
          # Using Ruff's import organizer
          disableOrganizeImports = true;
        };
        python = {
          analysis = {
            ignore = [ ];
            typeCheckingMode = "basic";
            diagnosticSeverityOverrides = {
              "reportUnusedImport" = "none";
              "reportUnusedClass" = "none";
              "reportUnusedFunction" = "none";
              "reportUnusedVariable" = "none";
              "reportDuplicateImport" = "none";
            };
          };
        };
      };
    };
  };
}
