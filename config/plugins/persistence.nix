{
  plugins = {
    persistence = {
      enable = true;
      lazyLoad = {
        enable = true;
        settings = {
          event = [ "BufReadPre" ];
        };
      };
      settings = {
        branch = true;
      };
    };
  };
}
