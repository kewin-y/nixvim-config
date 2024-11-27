{config, ...}: let
  colors = import ./themes/${config.theme}.nix;
in {
  # Highlight groups
  highlightOverride = with colors; {
    WinSeparator.fg = "${base02}";
    VertSplit = {
      fg = base01;
      bg = "none";
    };
    LineNr = {
      fg = base03;
      bg = "none";
    };
    SignColumn = {
      fg = base03;
      bg = "none";
    };
    NormalFloat.bg = "${base01}";
    FloatBorder.fg = "${base01}";
    FloatBorder.bg = "${base01}";
    NvimTreeWindowPicker.fg = "${base05}";
    NvimTreeWindowPicker.bg = "${base01}";
    NvimTreeFolderIcon .fg = "${base0D}";
    NvimTreeFolderName .fg = "${base0D}";
    NvimTreeFolderArrowOpen.fg = "${base0D}";
    NvimTreeFolderArrowClosed.fg = "${base0D}";
    CmpItemAbbrMatch.fg = "${base05}";
    CmpItemAbbrMatchFuzzy.fg = "${base05}";
    CmpItemAbbr.fg = "${base05}";
    CmpItemKind.fg = "${base0E}";
    CmpItemMenu.fg = "${base0E}";
    CmpItemKindSnippet.fg = "${base0E}";
    # TelescopePromptBorder.fg = "${base01}";
    # TelescopePromptBorder.bg = "${base01}";
    # TelescopePromptNormal.bg = "${base01}";
    # TelescopePromptPrefix.fg = "${base08}";
    # TelescopePromptPrefix.bg = "${base01}";
    # TelescopeSelection.bg = "${base01}";
    TSComment = {
      fg = "${base03}";
      italic = true;
    };
  };
}
