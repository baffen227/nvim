
-- Appearance
vim.opt.shortmess="I"                 -- Remove splash screen
vim.opt.cursorline=true               -- Show cursor line
vim.opt.number=true                   -- Show line numbers
vim.opt.wrap=false                    -- Do not wrap text

-- Autocomplete
vim.opt.complete="."                  -- Only use current buffer for autocomplete
-- Show menu even with one entry only, do not select nor insert, and show preview
vim.opt.completeopt="menuone,noselect,noinsert,preview"
vim.opt.pumheight=10                  -- Menu height (number of lines)

