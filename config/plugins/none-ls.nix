{
  plugins.none-ls = {
    enable = true;
    sources = {
      formatting = {
        alejandra.enable = true;
        prettierd = {
          enable = true;
          disableTsServerFormatter = true;
        };
        csharpier.enable = true;
        yamlfmt.enable = true;
        stylua.enable = true;
      };
    };
  };
}
