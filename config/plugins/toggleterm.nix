{
  plugins = {
    toggleterm = {
      enable = true;
      lazyLoad = {
        enable = true;
        ft = [
          "c"
          "cpp"
        ];
      };
      settings = {
        direction = "float";
        float_opts = {
          border = "curved";
          height = 30;
          width = 130;
        };
        open_mapping = "[[<c-\\>]]";
      };
    };
  };
}
