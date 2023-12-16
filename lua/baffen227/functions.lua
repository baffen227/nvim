-- HELP
-- Go to tag
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'help' },
    callback = function (opts)
        vim.keymap.set('n', '<Enter>', '<C-]>')
    end,
})

-- AUTOCOMPLETE
vim.api.nvim_create_autocmd('InsertCharPre', {
    callback = function (opts)
        if vim.fn.pumvisible() == 0 then
            local key = vim.api.nvim_replace_termcodes('<C-n>', true, false, true)
            vim.api.nvim_feedkeys(key, 'n', false)
        end
    end,
})

-- GIT GREP
vim.keymap.set('n', '<leader>g', function()
    local cword = vim.fn.expand('<cword>')
    local git_grep = 'git grep -I -n '..cword
    local cmd = 'system("'..git_grep..'")'
    vim.cmd.lgetexpr(cmd)
    vim.cmd.lopen()
    vim.cmd('/'..cword)
end)

