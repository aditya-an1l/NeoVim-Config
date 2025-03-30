return { {
  "junegunn/goyo.vim",
},
  {
    "preservim/vim-pencil",
  },
  {
    'sheerun/vim-polyglot',
  },
  { "francoiscabrol/ranger.vim",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && yarn install", -- Use 'build' instead of 'do'
  },
}
