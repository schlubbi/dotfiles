Plug 'prabirshrestha/asyncomplete.vim'
  " Use ALE's function for asyncomplete defaults
  au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#ale#get_source_options({
      \ 'priority': 10,
      \ }))

  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
  inoremap <expr> <C-y>   pumvisible() ? asyncomplete#close_popup() : "\<C-y>"
  inoremap <expr> <C-e>   pumvisible() ? asyncomplete#cancel_popup() : "\<C-e>"
  set completeopt+=preview
  autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
