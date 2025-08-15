{
  opts = {
    # --------------------------
    # Documents and Undo
    # --------------------------
    autowrite =
      true; # Automatically save changes when switching buffers or running certain commands
    autoread = true; # Automatically reload files changed outside of Neovim
    undofile = true; # Enable persistent undo (undo history is saved to disk)
    undolevels = 10000; # Maximum number of undo steps

    # --------------------------
    # Search and Replace
    # --------------------------
    ignorecase = true; # Ignore case in search patterns
    smartcase =
      true; # Override 'ignorecase' if search pattern contains uppercase letters
    incsearch = true; # Show search matches as you type
    hlsearch = false; # Do not keep matches highlighted after search is done
    inccommand =
      "nosplit"; # Show live preview of substitutions without splitting the window

    # --------------------------
    # User Interface
    # --------------------------
    number = true; # Show absolute line numbers
    relativenumber = true; # Show relative line numbers for easier movement
    cursorline = true; # Highlight the line under the cursor
    signcolumn = "yes"; # Always show the sign column to avoid text shifting
    termguicolors = true; # Enable true color support
    scrolloff = 8; # Keep at least 8 lines visible above/below the cursor
    sidescrolloff =
      8; # Keep at least 8 columns visible left/right of the cursor
    laststatus = 3; # Global statusline for all windows (Neovim 0.9+)
    showmode = false; # Hide mode indicator (statusline plugin usually shows it)
    list = true; # Show invisible characters like tabs and spaces
    pumheight = 10; # Limit popup menu height to 10 items
    mouse = "a"; # Enable mouse support in all modes
    clipboard = "unnamedplus"; # Sync Neovim clipboard with the system clipboard
    winborder = "rounded";

    # --------------------------
    # Indentation
    # --------------------------
    expandtab = true; # Convert tabs to spaces
    shiftwidth = 4; # Number of spaces per indentation level
    tabstop = 4; # Number of spaces tabs count for
    softtabstop = 4; # Number of spaces a tab or backspace inserts/removes
    shiftround = true; # Round indent to nearest multiple of 'shiftwidth'
    smartindent = true; # Smart auto-indenting for new lines

    # --------------------------
    # Split Windows
    # --------------------------
    splitbelow = true; # New horizontal splits open below the current window
    splitright =
      true; # New vertical splits open to the right of the current window
    splitkeep = "screen"; # Maintain screen view when splitting (Neovim 0.9+)

    # --------------------------
    # Behavior and Performance
    # --------------------------
    wrap = false; # Do not wrap long lines; enable horizontal scrolling
    timeoutlen = 300; # Time (ms) to wait for a mapped key sequence to complete
    updatetime = 200; # Faster updates for CursorHold events and diagnostics

    # --------------------------
    # Command-line and Completion
    # --------------------------
    wildmode =
      "longest:full,full"; # Command-line completion: longest common match, then full list
  };

  globals = {
    # --------------------------
    # Leader Keys
    # --------------------------
    mapleader = " "; # Set <Leader> to Space
    maplocalleader = " "; # Set <LocalLeader> to Space
  };
}
