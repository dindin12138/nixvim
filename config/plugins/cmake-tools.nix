{
  plugins.cmake-tools = {
    enable = true;
    lazyLoad.settings = {
      ft = [ "cmake" ];
      before.__raw = ''
        function()
          require("lz.n").trigger_load("toggleterm.nvim")
        end
      '';
    };
    settings = {
      cmake_build_directory = "build/\${variant:buildtype}";
      # cmake_dap_configuration = {
      #   cwd = "\${workspaceFolder}";
      #   name = "Launch file";
      #   program = {
      #     __raw = ''
      #       function()
      #         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      #       end
      #     '';
      #   };
      #   request = "launch";
      #   stopOnEntry = false;
      #   type = "codelldb";
      # };
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
      cmake_soft_link_compile_commands = false;
    };
  };
  autoCmd = [
    {
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*.c"
        "*.cpp"
        "*.h"
        "*.hpp"
        "CMakeLists.txt"
      ];
      desc = "Check for CMakeLists.txt and load cmake-tools if found";
      callback = {
        __raw = ''
          function(args)
            local file_path = args.file
            if file_path == "" then
              file_path = vim.fn.getcwd()
            end
            local root = vim.fs.find("CMakeLists.txt", {
              path = vim.fs.dirname(file_path),
              upward = true,
              stop = vim.env.HOME,
              limit = 1
            })[1]
            if root then
              require("lz.n").trigger_load("cmake-tools.nvim")
            end
          end
        '';
      };
    }
  ];
}
