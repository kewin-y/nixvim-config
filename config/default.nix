# Much this code is referenced from elythh's nixvim config as I still suck at Nix
# See https://github.com/elythh/nixvim
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
        "decay"
        "far"
        "material-palenight"
        "oxocarbon"
        "paradise"
        "rose-pine-dawn"
        "rose-pine"
        "solarized-light"
        "test"
        "yoru"
      ];
    };
  };

  config = {
    theme = "material-palenight";
  };
}
