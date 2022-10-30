--maybe can be useful
--vim.g.mapleader = ','
--
vim.g.mapleader = ','

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
map("n", "<Leader>", ":<C-u>WhichKey ','<CR>", { silent = true })
map("n", "<Leader>?", ":WhichKey ','<CR>")
map("n", "<Leader>a", ":cclose<CR>")
map("n", "<Leader>nn", ":NvimTreeToggle<CR>")
--Move between slits using ctrl-[hjkl]
map("n", "<c-k>", ":wincmd k<CR>")
map("n", "<c-j>", ":wincmd j<CR>")
map("n", "<c-h>", ":wincmd h<CR>")
map("n", "<c-l>", ":wincmd l<CR>")
--jk to esc in insert mode
map("i", "jk", "<ESC>")


--vimspector not using it for now
---- Vimspector
--vim.cmd([[
--nmap <F9> <cmd>call vimspector#Launch()<cr>
--nmap <F5> <cmd>call vimspector#StepOver()<cr>
--nmap <F8> <cmd>call vimspector#Reset()<cr>
--nmap <F11> <cmd>call vimspector#StepOver()<cr>")
--nmap <F12> <cmd>call vimspector#StepOut()<cr>")
--nmap <F10> <cmd>call vimspector#StepInto()<cr>")
--]])
--map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>")
--map('n', "Dw", ":call vimspector#AddWatch()<cr>")
--map('n', "De", ":call vimspector#Evaluate()<cr>")
