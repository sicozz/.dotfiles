vim.g.autoformat = false
vim.g.markdown_fenced_languages = { "ts=typescript" } -- for Denols
vim.g.snacks_animate = false -- disable animations

vim.opt.autoindent = true
-- vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.backup = false
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.breakindent = true
vim.opt.clipboard = ""
vim.opt.confirm = false
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
-- vim.opt.formatoptions:append({ "r" })
vim.opt.hlsearch = true
vim.opt.inccommand = "split"
vim.opt.laststatus = 2
vim.opt.mouse = ""
vim.opt.number = true
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
-- vim.opt.shiftwidth = 4
vim.opt.showcmd = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.wrap = false -- No Wrap lines
