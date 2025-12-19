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
  ];
  plugins.conform-nvim = {
    enable = true;
    lazyLoad.settings = {
      cmd = [ "ConformInfo" ];
      event = [ "BufWritePre" ];
      keys = [
        {
          __unkeyed-1 = "<leader>lf";
          __unkeyed-2.__raw = ''
            function()
              require("conform").format({ lsp_fallback = true })
            end
          '';
          mode = "n";
          desc = "Format (Conform)";
        }
      ];
    };
    settings = {
      formatters_by_ft = {
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        c = [ "clang_format" ];
        cpp = [ "clang_format" ];
        cmake = [ "cmake_format" ];
        python = [ "ruff_format" ];
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
}
