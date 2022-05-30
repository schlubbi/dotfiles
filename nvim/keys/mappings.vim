" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>t :Files<CR>
nnoremap <leader>b :Buffers<CR>

nnoremap <leader><leader> <c-^>
" dot mode in visual mode !!!
xnoremap . :normal .<CR>
" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

" grab file path and line number and run test
" map <leader>T   :let @+ = "bin/rails test ".expand("%").":".line(".")<CR>
map <leader>T :call RunTest()<CR>

function! RunTest()
  let file_path_and_line_number = expand("%").":".line(".")
  echo file_path_and_line_number
  "exec ":!bin/rails test " . file_path_and_line_number
  execute "terminal bin/rails test ".shellescape(file_path_and_line_number)
endfunction
