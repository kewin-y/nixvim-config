{config, ...}: let
  colors = import ./themes/${config.theme}.nix;
in {
  highlightOverride = with colors; {
    # Misc
    WinSeparator.fg = base02;
    NormalFloat.bg = base00;
    VertSplit = {
      fg = base01;
      bg = "none";
    };
    FloatBorder = {
      fg = base03;
      bg = base00;
    };
    LineNr = {
      fg = base03;
      bg = "none";
    };
    SignColumn = {
      fg = base03;
      bg = "none";
    };

    # Diagnostics
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

    # Cmp
    CmpItemAbbrMatch.fg = base05;
    CmpItemAbbrMatchFuzzy.fg = base05;
    CmpItemAbbr.fg = base05;
    CmpItemKind.fg = base0E;
    CmpItemMenu.fg = base0E;
    CmpItemKindSnippet.fg = base0E;

    # Mini
    MiniFilesBorder.fg = base03;
    MiniFilesCursorLine.bg = base01;
    MiniFilesTitle.bg = base00;
    MiniFilesTitleFocused.bg = base00;
    MiniFilesBorderModified = {
      fg = base0A;
      bold = true;
    };
    MiniStarterItemPrefix = {
      fg = base0D;
      bold = true;
    };
    MiniFilesNormal = {
      fg = base05;
      bg = base00;
    };

    # Telescope
    TelescopeBorder.fg = base03;

    TSComment = {
      fg = base0B;
      italic = true;
    };
  };
}
