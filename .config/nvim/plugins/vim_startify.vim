" Add extra commands
let g:startify_commands = [
        \ {'t': ['Terminal', 'term']},
        \ {'h': ['Help', 'h ref']},
        \ ]

" open startfy with leader S
nmap <leader>S :Startify<CR>
