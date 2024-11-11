{lib, ...}: {
  imports = [
    ./binds.nix
    ./opts.nix
    ./theme.nix
    ./plugins
    ./autocmds.nix
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
      ];
    };
  };

  # Declare colorscheme here
  # Thank you, elythh
  config = {
    theme = "material-darker";
  };
}
