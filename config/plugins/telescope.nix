{pkgs, ...}: {
  plugins.telescope = {
    enable = true;

    lazyLoad.settings = {
      enable = true;
      keys = [
        "<C-g>"
        "<leader>fw"
        "<leader>ff"
        "<leader>fo"
        "<leader>fb"
      ];
      cmd = "Telescope";
    };

    keymaps = {
      "<C-g>" = "git_files";
      "<leader>fw" = "live_grep";
      "<leader>ff" = "find_files";
      "<leader>fo" = "oldfiles";
      "<leader>fb" = "buffers";
    };
    settings.defaults = {
      vimgrep_arguments = [
        "${pkgs.ripgrep}/bin/rg"
        "-L"
        "--color=never"
        "--no-heading"
        "--with-filename"
        "--line-number"
        "--column"
        "--smart-case"
        "--fixed-strings"
      ];
      file_ignore_patterns = [
        "^node_modules/"
        "^.devenv/"
        "^.direnv/"
        "^.git/"
      ];
      prompt_prefix = " > ";
      selection_caret = "  ";
      entry_prefix = "  ";
      initial_mode = "insert";
      selection_strategy = "reset";
      sorting_strategy = "ascending";
      layout_strategy = "flex";
      border = false;
      layout_config = {
        horizontal = {
          prompt_position = "bottom";
          preview_width = 0.55;
        };
      };

      # borderchars = {
      #   prompt = ["─" "│" "─" "│" "┌" "┐" "┘" "└"];
      #   results = ["─" "│" "─" "│" "┌" "┐" "┘" "└"];
      #   preview = ["─" "│" "─" "│" "┌" "┐" "┘" "└"];
      # };
    };
  };
}
