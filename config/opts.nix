{...}: {
  plugins.web-devicons.enable = false;
  plugins.lz-n.enable = true;

  opts = {
    fillchars.eob = " ";
    termguicolors = true;
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;
    expandtab = true;
    smartindent = true;
    laststatus = 3;
    showmode = false;
    smartcase = true;
    foldmethod = "manual";
    mouse = "a";
    number = true;
    numberwidth = 2;
    ruler = false;
    signcolumn = "yes";
    splitbelow = true;
    splitright = true;
    timeoutlen = 400;
    undofile = true;
    conceallevel = 1;
    winborder = "single";
  };

  # 😢
  extraConfigLua = ''
    vim.opt.shortmess:append "sI"
    vim.opt.whichwrap:append "<>[]hl"
  '';
}
