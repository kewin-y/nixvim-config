{lib, ...}: {
  imports = [
    ./binds.nix
    ./opts.nix
    ./colorscheme.nix
    ./plugins
    ./autocmds.nix
  ];

  options = {
    scheme = lib.mkOption {
      default = lib.mkDefault "far";
      type = lib.types.enum [
        "paradise"
        "far"
        "oxocarbon"
        "material"
      ];
    };
  };

  # Declare colorscheme here
  # Thank you, elythh
  config = {
    scheme = "oxocarbon";
  };
}
