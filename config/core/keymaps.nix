{
  keymaps = [
    # { mode = [ "n" ]; key = ""; action = ""; options = { desc = ""; };}

    # better up/down
    { mode = [ "n" "x" ]; key = "j"; action = "v:count == 0 ? 'gj' : 'j'"; options = { expr = true; silent = true; };}
    { mode = [ "n" "x" ]; key = "<Down>"; action = "v:count == 0 ? 'gj' : 'j'"; options = { expr = true; silent = true; };}
    { mode = [ "n" "x" ]; key = "k"; action = "v:count == 0 ? 'gk' : 'k'"; options = { expr = true; silent = true; };}
    { mode = [ "n" "x" ]; key = "<Up>"; action = "v:count == 0 ? 'gk' : 'k'"; options = { expr = true; silent = true; };}

    # Move to window using the <ctrl> hjkl keys
    { mode = [ "n" ]; key = "<C-h>"; action = "<C-w>h"; options = { desc = "Go to left window"; silent = true; };}
    { mode = [ "n" ]; key = "<C-j>"; action = "<C-w>j"; options = { desc = "Go to lower window"; silent = true; };}
    { mode = [ "n" ]; key = "<C-k>"; action = "<C-w>k"; options = { desc = "Go to upper window"; silent = true; };}
    { mode = [ "n" ]; key = "<C-l>"; action = "<C-w>l"; options = { desc = "Go to right window"; silent = true; };}

    # quick move
    { mode = [ "n" ]; key = "<S-j>"; action = "5j"; options = { desc = "Fast down"; silent = true; };}
    { mode = [ "n" ]; key = "<S-k>"; action = "5k"; options = { desc = "Fast up"; silent = true; };}
    { mode = [ "i" ]; key = "<C-b>"; action = "<esc>I"; options = { desc = "Move to beginning of line"; silent = true; };}
    { mode = [ "i" ]; key = "<C-e>"; action = "<end>"; options = { desc = "Move to end of line"; silent = true; };}
    { mode = [ "i" ]; key = "<C-h>"; action = "<Left>"; options = { desc = "Move Left"; silent = true; };}
    { mode = [ "i" ]; key = "<C-j>"; action = "<Down>"; options = { desc = "Move Down"; silent = true; };}
    { mode = [ "i" ]; key = "<C-k>"; action = "<Up>"; options = { desc = "Move Up"; silent = true; };}
    { mode = [ "i" ]; key = "<C-l>"; action = "<Right>"; options = { desc = "Move Right"; silent = true; };}

    # -- buffers
    { mode = [ "n" ]; key = "<S-h>"; action = "<cmd>BufferLineCyclePrev<cr>"; options = { desc = "Prev buffer"; silent = true; };}
    { mode = [ "n" ]; key = "<S-l>"; action = "<cmd>BufferLineCycleNext<cr>"; options = { desc = "Next buffer"; silent = true; };}
    { mode = [ "n" ]; key = "<S-Tab>"; action = "<cmd>BufferLineCyclePrev<cr>"; options = { desc = "Prev buffer"; silent = true; };}
    { mode = [ "n" ]; key = "<Tab>"; action = "<cmd>BufferLineCycleNext<cr>"; options = { desc = "Next buffer"; silent = true; };}
    { mode = [ "n" ]; key = "<leader>q"; action = "<cmd>Bdelete!<cr>"; options = { desc = "Delete buffer"; silent = true; };}
    { mode = [ "n" ]; key = "<leader>x"; action = "<cmd>BufferLinePickClose<cr>"; options = { desc = "Close the selected buffer"; silent = true; };}

    # save file
    { mode = [ "i" "x" "n" "s" ]; key = "<C-s>"; action = "<cmd>w<cr><esc>"; options = { desc = "Save file"; silent = true; };}
    { mode = [ "x" "n" "s" ]; key = "W"; action = "<cmd>w<cr><esc>"; options = { desc = "Save file"; silent = true; };}

    # quit quickly
    { mode = [ "n" ]; key = "Q"; action = "<cmd>qa<cr>"; options = { desc = "Quit all"; silent = true; };}
  ];

}
