{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    tmux-nvim
  ];
  extraConfigLua = ''
    require("tmux").setup({
        navigation = {
            cycle_navigation = true,
            enable_default_keybindings = false,
        },
        resize = {
            enable_default_keybindings = false,
        }
    })
  '';
}
