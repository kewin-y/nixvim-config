{
  plugins.none-ls = {
    enable = true;
    sources = {
      formatting = {
        alejandra.enable = true;
        prettierd.enable = true;
        csharpier.enable = true;
        yamlfmt.enable = true;
        stylua.enable = true;
      };
    };
  };
}
