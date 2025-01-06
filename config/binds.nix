{
  globals.mapleader = " ";
  keymaps = [
    # Toggle MiniFiles
    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>lua if not MiniFiles.close() then MiniFiles.open() end<Cr>";
    }
    # Turn off highlighting
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>noh<Cr>";
    }
    # Window keybinds
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
    }
    # Move up/down within wrapped line
    {
      mode = ["n" "v"];
      key = "k";
      action = ''v:count || mode(1)[0:1] == "no" ? "k" : "gk"'';
      options = {
        expr = true;
      };
    }
    {
      mode = ["n" "v"];
      key = "j";
      action = ''v:count || mode(1)[0:1] == "no" ? "j" : "gj"'';
      options = {
        expr = true;
      };
    }
    # Clipboard-related
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = ''"+y"'';
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = ''"+Y"'';
    }
    # Move text up/down
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }
    # Enhanced defaults
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
    }
  ];
}
