{lib, ...}: {
  imports = [
    ./binds.nix
    ./opts.nix
    ./colorscheme.nix
    ./plugins
  ];

  options = {
    scheme = lib.mkOption {
      default = lib.mkDefault "far";
      type = lib.types.enum [
        "paradise"
        "far"
        "brushtrees"
      ];
    };
  };

  # Declare colorscheme here
  # Thank you, elythh
  config = {
    scheme = "brushtrees";
  };
}
