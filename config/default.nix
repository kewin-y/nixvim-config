{lib, ...}: {
  imports = [
    ./binds.nix
    ./opts.nix
    ./colorscheme.nix
    ./plugins
  ];

  options = {
    scheme = lib.mkOption {
      default = lib.mkDefault "paradise";
      type = lib.types.enum [
        "paradise"
        "far"
      ];
    };
  };

  # Declare colorscheme here
  # Thank you, elythh
  config = {
    scheme = "paradise";
  };
}
