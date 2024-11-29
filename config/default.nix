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
      ];
    };
  };

  # Declare colorscheme here
  # Thank you, elythh
  config = {
    theme = "paradise";
  };
}
