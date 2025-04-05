# Much this code/workflow is referenced from elythh's nixvim config: https://github.com/elythh/nixvim
{lib, ...}: {
  imports = [
    ./plugins
    ./autocmds.nix
    ./binds.nix
    ./opts.nix
    ./theme.nix
    ./ftplugin.nix
  ];

  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "far";
      type = lib.types.enum [
        "far"
        "material-palenight"
        "paradise"
        "rose-pine-dawn"
        "rose-pine"
        "test"
        "everforest-dark-hard"
      ];
    };
  };

  config = {
    theme = "everforest-dark-hard";
  };
}
