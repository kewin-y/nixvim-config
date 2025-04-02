{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    lazyLoad.settings = {
      enable = true;
      event = ["BufReadPost" "BufNewFile"];
    };
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    settings = {
      indent = {
        enable = true;
      };
      highlight = {
        enable = true;
      };
    };
    nixGrammars = true;
    nixvimInjections = true;
  };
}
