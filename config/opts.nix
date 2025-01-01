{...}: {
  # Where else can I put this
  plugins.web-devicons.enable = false;

  opts = {
    fillchars.eob = " ";
    termguicolors = true;
    shiftwidth = 8;
    tabstop = 8;
    softtabstop = 8;
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
  };

  # 😢
  extraConfigLua = ''
    vim.opt.shortmess:append "sI"
    vim.opt.whichwrap:append "<>[]hl"
  '';
}
