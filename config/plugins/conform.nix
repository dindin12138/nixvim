{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    # Formatter
    stylua
    nixfmt
    prettier
    shfmt
    gofumpt
    jq
    cmake-format
    sql-formatter
    black
  ];
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          lua = [ "stylua" ];
          nix = [ "nixfmt" ];
          c = [ "clang_format" ];
          cpp = [ "clang_format" ];
          cmake = [ "cmake_format" ];
          python = [
            "ruff_format"
            "black"
          ];
          go = [ "gofumpt" ];
          sh = [ "shfmt" ];
          json = [ "jq" ];
          jsonc = [ "prettier" ];
          sql = [ "sql_formatter" ];
          javascript = [ "prettier" ];
          javascriptreact = [ "prettier" ];
          typescript = [ "prettier" ];
          typescriptreact = [ "prettier" ];
          vue = [ "prettier" ];
          css = [ "prettier" ];
          scss = [ "prettier" ];
          less = [ "prettier" ];
          html = [ "prettier" ];
          yaml = [ "prettier" ];
          markdown = [ "prettier" ];
          graphql = [ "prettier" ];
          handlebars = [ "prettier" ];
        };
        format_on_save = {
          lspFallback = true;
          timeoutMs = 500;
        };
      };
    };
  };

}
