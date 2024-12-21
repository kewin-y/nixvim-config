{config, ...}: let
  colors = import ./themes/${config.theme}.nix;
in {
  # Highlight groups
  highlightOverride = with colors; {
    WinSeparator.fg = base02;
    VertSplit = {
      fg = base01;
      bg = "none";
    };
    NormalFloat.bg = base00;

    FloatBorder.fg = base03;
    FloatBorder.bg = base00;

    NvimTreeWindowPicker.fg = base05;
    NvimTreeWindowPicker.bg = base01;
    NvimTreeFolderIcon .fg = base0D;
    NvimTreeFolderName .fg = base0D;
    NvimTreeFolderArrowOpen.fg = base0D;
    NvimTreeFolderArrowClosed.fg = base0D;


    CmpItemAbbrMatch.fg = base05;
    CmpItemAbbrMatchFuzzy.fg = base05;
    CmpItemAbbr.fg = base05;
    CmpItemKind.fg = base0E;
    CmpItemMenu.fg = base0E;
    CmpItemKindSnippet.fg = base0E;

    LineNr = {
      fg = base03;
      bg = "none";
    };
    SignColumn = {
      fg = base03;
      bg = "none";
    };
    DiagnosticFloatingError = {
      fg = base08;
      bg = base00;
    };
    DiagnosticFloatingHint = {
      fg = base0A;
      bg = base00;
    };
    DiagnosticFloatingInfo = {
      fg = base0C;
      bg = base00;
    };
    DiagnosticFloatingOk = {
      fg = base0B;
      bg = base00;
    };
    DiagnosticFloatingWarn = {
      fg = base0E;
      bg = base00;
    };
    DiagnosticSignError = {
      fg = base08;
      bg = base00;
    };
    DiagnosticSignHint = {
      fg = base0A;
      bg = base00;
    };
    DiagnosticSignInfo = {
      fg = base0C;
      bg = base00;
    };
    DiagnosticSignOk = {
      fg = base0B;
      bg = base00;
    };
    DiagnosticSignWarn = {
      fg = base0E;
      bg = base00;
    };

    MiniStarterItemPrefix = {
      fg = base0D;
      bold = true;
    };

    MiniFilesBorder.fg = base03;
    MiniFilesBorderModified = {
      fg = base0A;
      bold = true;
    };

    MiniFilesCursorLine.bg = base01;

    MiniFilesNormal = {
      fg = base05;
      bg = base00;
    };

    MiniFilesTitle.bg = base00;
    MiniFilesTitleFocused.bg = base00;

    TelescopeBorder.fg = base03;

    TSComment = {
      fg = base03;
      italic = true;
    };
  };
}
