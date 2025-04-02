{
  plugins.indent-blankline = {
    enable = true;
    lazyLoad.settings = {
      enable = true;
      event = ["User" "BufReadPost"];
    };
    settings = {
      scope.enabled = false;
      indent.char = "│";
    };
  };
}
