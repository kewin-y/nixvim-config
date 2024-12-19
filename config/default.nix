# Much this code is referenced from elythh's nixvim config as I still suck at Nix
# See https://github.com/elythh/nixvim

{lib, ...}: {
  imports = [
    ./plugins
    ./autocmds.nix
    ./binds.nix
    ./opts.nix
    ./theme.nix
  ];

  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "far";
      type = lib.types.enum [
        "paradise"
        "far"
        "oxocarbon"
        "material"
        "material-darker"
        "material-lighter"
        "test"
        "decay"
        "rose-pine-dawn"
        "yoru"
        "solarized-light"
      ];
    };
  };

  config = {
    theme = "test";
  };
}
