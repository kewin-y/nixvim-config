{config, ...}: let
  colors = import ./schemes/${config.scheme}.nix;
in {
  colorschemes.base16 = {
    enable = true;
    colorscheme = colors;
  };

  # Highlight groups
  highlight = with colors; {
    WinSeparator.fg = "${base02}";
    NormalFloat.bg = "${base01}";
    FloatBorder.fg = "${base01}";
    FloatBorder.bg = "${base01}";
    NvimTreeWindowPicker.fg = "${base05}";
    NvimTreeWindowPicker.bg = "${base01}";
    CmpItemAbbrMatch.fg = "${base05}";
    CmpItemAbbrMatchFuzzy.fg = "${base05}";
    CmpItemAbbr.fg = "${base05}";
    CmpItemKind.fg = "${base0E}";
    CmpItemMenu.fg = "${base0E}";
    CmpItemKindSnippet.fg = "${base0E}";
    TelescopePromptBorder.fg = "${base01}";
    TelescopePromptBorder.bg = "${base01}";
    TelescopePromptNormal.bg = "${base01}";
    TelescopePromptPrefix.fg = "${base08}";
    TelescopePromptPrefix.bg = "${base01}";
    TelescopeSelection.bg = "${base01}";
    TSComment = {
      fg = "${base03}";
      italic = true;
    };
  };
}
