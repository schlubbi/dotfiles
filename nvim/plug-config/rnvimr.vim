" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

nmap <space>r :RnvimrToggle<CR>
" Resize floating window by all preset layouts
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

let g:rnvimr_layout = {
      \ 'relative': 'editor',
      \ 'width': &columns,
      \ 'height': &lines - 2,
      \ 'col': 0,
      \ 'row': 0,
      \ 'style': 'minimal'
      \ }
