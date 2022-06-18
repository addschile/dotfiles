nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
