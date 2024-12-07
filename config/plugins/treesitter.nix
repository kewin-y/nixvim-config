{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      nix
      markdown
      typescript
      javascript
      c
      cpp
      python
      astro
      rust
      yaml
      html
      scss
      css
    ];
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
