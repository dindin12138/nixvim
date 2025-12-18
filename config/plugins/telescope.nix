{
  plugins.telescope = {
    enable = true;
    lazyLoad.settings.cmd = [ "Telescope" ];
    settings = {
      defaults = {
        layout_strategy = "horizontal";
        layout_config = {
          horizontal = {
            prompt_position = "top";
            preview_width = 0.55;
          };
        };
        sorting_strategy = "ascending";
        mappings = {
          i = {
            "<C-j>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<C-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
            "<Down>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<Up>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
            "<C-n>" = {
              __raw = "require('telescope.actions').cycle_history_next";
            };
            "<C-p>" = {
              __raw = "require('telescope.actions').cycle_history_prev";
            };
            "<C-u>" = {
              __raw = "require('telescope.actions').preview_scrolling_up";
            };
            "<C-d>" = {
              __raw = "require('telescope.actions').preview_scrolling_down";
            };
            "<C-c>" = {
              __raw = "require('telescope.actions').close";
            };
          };
        };
      };
    };
  };
}
