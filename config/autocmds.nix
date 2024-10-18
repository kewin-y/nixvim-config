{...}: {
  autoCmd = [
    # Remove trailing whitespace
    {
      event = ["BufWritePre"];
      pattern = ["*"];
      # From https://vi.stackexchange.com/questions/37421/how-to-remove-neovim-trailing-white-space
      callback = {
        __raw = ''
          function(ev)
            save_cursor = vim.fn.getpos(".")
            vim.cmd([[%s/\s\+$//e]])
            vim.fn.setpos(".", save_cursor)
          end
        '';
      };
    }
  ];
}
