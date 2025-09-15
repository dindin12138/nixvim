{
  plugins = {
    lsp = {
      servers = {
        lua_ls = {
          enable = true;
          settings = {
            runtime.version = "LuaJIT";
            workspace = {
              checkThirdParty = false;
            };
          };
        };
      };
    };
  };
}
