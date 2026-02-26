{
  plugins.lsp.servers = {
    lua_ls = {
      enable = true;
      packageFallback = true;
      settings = {
        runtime.version = "LuaJIT";
        workspace = {
          checkThirdParty = false;
        };
      };
    };
  };
}
