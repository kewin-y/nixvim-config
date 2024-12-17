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
        header = ''Nevoim'';
      };
    };
  };
}
