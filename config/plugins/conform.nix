{ pkgs, ... }: {
  extraPackages = with pkgs; [ stylua nixfmt ];
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          lua = [ "stylua" ];
          nix = [ "nixfmt" ];
        };
        format_on_save = {
          lspFallback = true;
          timeoutMs = 500;
        };
      };
    };
  };

}
