{config, ...}: let
  colors = import ../themes/${config.theme}.nix;
in {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        disabled_filetypes = {
          statusline = [
            "ministarter"
          ];
        };
        icons_enabled = false;
        global_status = true;
        component_separators = {
          left = "";
          right = " ";
        };
        section_separators = {
          left = "";
          right = "";
        };
        theme = with colors; {
          normal = {
            a = {
              bg = "${base01}";
              fg = "${base0D}";
            };
            b = {
              bg = "${base01}";
              fg = "${base05}";
            };
            c = {
              bg = "${base01}";
              fg = "${base05}";
            };
            z = {
              bg = "${base01}";
              fg = "${base05}";
            };
            y = {
              bg = "${base01}";
              fg = "${base05}";
            };
          };
          insert = {
            a = {
              bg = "${base01}";
              fg = "${base0E}";
            };
            b = {
              bg = "${base01}";
              fg = "${base05}";
            };
            c = {
              bg = "${base01}";
              fg = "${base05}";
            };
            z = {
              bg = "${base01}";
              fg = "${base05}";
            };
            y = {
              bg = "${base01}";
              fg = "${base05}";
            };
          };
          command = {
            a = {
              bg = "${base01}";
              fg = "${base08}";
            };
            b = {
              bg = "${base01}";
              fg = "${base05}";
            };
            c = {
              bg = "${base01}";
              fg = "${base05}";
            };
            z = {
              bg = "${base01}";
              fg = "${base05}";
            };
            y = {
              bg = "${base01}";
              fg = "${base05}";
            };
          };
          visual = {
            a = {
              bg = "${base01}";
              fg = "${base0B}";
            };
            b = {
              bg = "${base01}";
              fg = "${base05}";
            };
            c = {
              bg = "${base01}";
              fg = "${base05}";
            };
            z = {
              bg = "${base01}";
              fg = "${base05}";
            };
            y = {
              bg = "${base01}";
              fg = "${base05}";
            };
          };
          replace = {
            a = {
              bg = "${base01}";
              fg = "${base0A}";
            };
            b = {
              bg = "${base01}";
              fg = "${base05}";
            };
            c = {
              bg = "${base01}";
              fg = "${base05}";
            };
            z = {
              bg = "${base01}";
              fg = "${base05}";
            };
            y = {
              bg = "${base01}";
              fg = "${base05}";
            };
          };
        };
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["filename"];
        lualine_c = [
          "branch"
          "diff"
        ];
        lualine_x = ["diagnostics"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
