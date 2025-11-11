{ pkgs }:

{
  enable = true;
  enableMan = true;

  # Sets aliases vi/vim=nvim
  viAlias = true;
  vimAlias = true;

  globals = {
    mapleader = " ";
  };

  opts = {
    expandtab = true;
    softtabstop = 2;
    shiftwidth = 2;
    scrolloff = 10;

    number = true;
    hlsearch = true;
    list = true;
    listchars = { tab = "»·"; trail = "·"; };
    splitright = true;
    splitbelow = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavor = "mocha";
    };
  };

  keymaps = [
    {
      action = ":w!<cr>";
      key = "<leader>w";
      mode = "n";
      options = {
        silent = true;
      };
    }
  ];

  plugins = {
    fzf-lua = {
      enable = true;
      keymaps = {
        "<leader>e" = "git_files";
        "<leader>d" = "diagnostics_document";
      };
    };

    lsp = {
      enable = true;
      inlayHints = true;
      keymaps = {
        lspBuf = {
          "K" = "hover";
          "gD" = "declaration";
          "gd" = "definition";
          "gr" = "references";
          "gI" = "implementation";
          "gy" = "type_definition";
          "<leader>ca" = "code_action";
          "<leader>cr" = "rename";
        };
      };
      servers = {
        bashls.enable = true;
        lua_ls.enable = true;
        nil_ls.enable = true;
        rubocop = {
          enable = true;
          cmd = ["bundle" "exec" "rubocop" "--lsp"];
        };
        ruby_lsp = {
          enable = true;
          cmd = ["mise" "x" "--" "ruby-lsp"];
        };
        yamlls.enable = true;
      };
    };
  };
}
