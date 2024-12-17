{config, ...}: let
  colors = import ../themes/${config.theme}.nix;
in {
  plugins.mini = {
    enable = true;
    modules = {
      base16 = {
        palette = colors;
      };
      starter = {
        evaluate_single = true;
        header = ''
           _______
          < work! >
           -------
                  \   ^__^
                   \  (oo)\_______
                      (__)\       )\/\
                          ||----w |
                          ||     ||
        '';
        footer = "";
        content_hooks = {
          "__unkeyed-3.padding" = {
            __raw = "require('mini.starter').gen_hook.aligning('center', 'center')";
          };
        };
        items = {
          "__unkeyed-1.buildtin_actions" = {
            __raw = "require('mini.starter').sections.builtin_actions()";
          };
          "__unkeyed-2.recent_files" = {
            __raw = "require('mini.starter').sections.recent_files(5, true, false)";
          };
          "__unkeyed-3.recent_files_current_directory" = {
            __raw = "require('mini.starter').sections.recent_files(5, false, false)";
          };
        };
      };
    };
  };
}
