{
  plugins = {
    cmake-tools = {
      enable = true;
      # lazyLoad = {
      #   enable = true;
      #   ft = [
      #     "c"
      #     "cpp"
      #   ];
      # };
      settings = {
        cmake_build_directory = "build/\${variant:buildtype}";
        cmake_executor = {
          name = "toggleterm";
        };
        cmake_notifications = {
          refresh_rate_ms = 80;
          spinner = [
            "▱▱▱▱▱▱▱"
            "▰▱▱▱▱▱▱"
            "▰▰▱▱▱▱▱"
            "▰▰▰▱▱▱▱"
            "▰▰▰▰▱▱▱"
            "▰▰▰▰▰▱▱"
            "▰▰▰▰▰▰▱"
            "▰▰▰▰▰▰▰"
          ];
        };
        cmake_regenerate_on_save = false;
        cmake_runner = {
          name = "toggleterm";
        };
        cmake_soft_link_compile_commands = true;
      };
    };
  };
}
