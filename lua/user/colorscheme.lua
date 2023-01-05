vim.opt.termguicolors = true
-- vim.opt.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
vim.cmd([[autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE]])
-- vim.cmd([[autocmd FileType lsp-installer lua vim.api.nvim_win_set_config(0, { border = "rounded" }]])
vim.cmd([[autocmd VimEnter * hi NormalFloat ctermbg=NONE guibg=NONE]])
vim.cmd([[autocmd VimEnter * hi FloatBorder ctermbg=NONE guibg=NONE]])
vim.cmd("let g:gruvbox_material_transparent_background = 2")
-- vim.cmd("highlight FloatBorder NONE")

local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
