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
    basedpyright = {
      enable = true;
      settings = {
        basedpyright = {
          disableOrganizeImports = true;
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
