nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

lua << EOF
require('telescope').setup {
    shorten_path = true;
    defaults = {
        file_ignore_patterns = { "node_modules", ".git" };
        layout_strategy = 'vertical';
        layout_config = {
            width = 0.99;
            height = 0.99;
        }
    },
    pickers = {
        find_files = {
            hidden = true;
        }
    }
}
EOF
