local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "nvim-treesitter/nvim-treesitter",
  "echasnovski/mini.nvim",
})
require("nvim-treesitter.configs").setup({
   ensure_installed = {"lua", "python", "c"},
   highlight = {enable=true,},
  })
require("mini.pairs").setup({})
require("mini.statusline").setup({})
require("mini.indentscope").setup({})
require("options")
