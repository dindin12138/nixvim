{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "doom";
      config = {
        header = [
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
          "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
          "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
          "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
          "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ""
          ""
          ""
        ];
        center = [
          {
            action = "Telescope projects";
            desc = "Projects                      ";
            desc_hl = "String";
            icon = "  ";
            icon_hl = "Title";
            key = "p";
            key_hl = "Number";
          }
          {
            action = "Telescope session-lens";
            desc = "Restore Session               ";
            desc_hl = "String";
            icon = "󰕰  ";
            icon_hl = "Title";
            key = "s";
            key_hl = "Number";
          }
          {
            action = "FzfLua oldfiles";
            desc = "Recent files                  ";
            desc_hl = "String";
            icon = "  ";
            icon_hl = "Title";
            key = "o";
            key_hl = "Number";
          }
          {
            action = "FzfLua files";
            desc = "Find Files                    ";
            desc_hl = "String";
            icon = "  ";
            icon_hl = "Title";
            key = "f";
            key_hl = "Number";
          }
          {
            action = ":ene | startinsert";
            desc = "New File                      ";
            desc_hl = "String";
            icon = "  ";
            icon_hl = "Title";
            key = "n";
            key_hl = "Number";
          }
          {
            action = "qa";
            desc = "Quit                      ";
            desc_hl = "String";
            icon = "  ";
            icon_hl = "Title";
            key = "q";
            key_hl = "Number";
          }
        ];
        footer = [
          ""
          ""
          "Talk is cheap. Show me the code."
        ];
      };
    };
  };
}
