{
  plugins.lsp.servers = {
    neocmake.enable = true;
    clangd = {
      enable = true;
      package = null;
      cmd = [
        "clangd"
        "--background-index"
        "--clang-tidy"
        "--pch-storage=memory"
        "--ranking-model=decision_forest"
        "--completion-style=detailed"
        "--header-insertion=iwyu"
        "--header-insertion-decorators"
        "--all-scopes-completion"
        "--log=info"
        "--function-arg-placeholders=true"
        "--fallback-style=Google"
      ];
    };
  };
}
