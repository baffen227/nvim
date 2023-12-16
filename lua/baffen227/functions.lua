
-- HELP
-- Go to tag
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'help' },
    callback = function (opts)
        vim.keymap.set('n', '<Enter>', '<C-]>')
    end,
})


