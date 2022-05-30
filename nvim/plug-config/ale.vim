let g:ale_completion_enabled = 0

" move to the next ALE warning / error
nnoremap ]r :ALENextWrap<CR>
" move to the previous ALE warning / error
nnoremap [r :ALEPreviousWrap<CR>

" TODO
" * css
" * markdown
" * ruby
" * sql
" * text
" * yaml

let g:ale_ruby_rubocop_executable = '/home/schlubbi/src/github.com/github/github/bin/rubocop'
let g:ale_ruby_ruby_executable =  '/home/schlubbi/src/github.com/github/github/bin/safe-ruby'
let g:ale_linters = {
      \  'sh': ['language_server', 'shell'],
      \  'elixir': ['elixir-ls'],
      \  'html': ['tidy'],
      \  'javascript': ['eslint', 'tsserver'],
      \  'json': ['jsonlint'],
      \  'go': ['gofmt', 'gobuild', 'gopls'],
      \  'rust': ['rls', 'rustc'],
      \  'ruby': ['mri', 'standardrb', 'rubocop','brakeman','reek'],
      \  'typescript': ['eslint', 'tsserver', 'tsc'],
      \}

let g:ale_fixers = {
      \  '*': ['remove_trailing_lines', 'trim_whitespace'],
      \  'sh': ['shfmt'],
      \  'elixir': ['mix_format'],
      \  'javascript': ['eslint'],
      \  'json': ['jq'],
      \  'typescript': ['eslint'],
      \  'terraform': ['terraform'],
      \  'go': ['gofmt', 'gomod'],
      \  'ruby': ['standardrb'],
      \}

noremap <leader>h :ALEHover<CR>
noremap <leader>re :ALERename<CR>
noremap <leader>n :ALENextWrap<CR>
noremap <leader>] :ALEGoToDefinition<CR>
noremap <leader>\ :ALEFindReferences<CR>

" Use Google's style for shell files
let g:ale_sh_shfmt_options = '-i 2 -ci'
" Use the elixir-ls compiled by vim-elixirls
let g:ale_elixir_elixir_ls_release = expand('~/.vim/plugged/vim-elixirls/elixir-ls/release/')

" There is currently a problem when first launching the elixir language server
" that ALE warns that 'using List as String' which is super annoying
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:true}}
let g:ale_rust_rls_toolchain = 'stable'

" let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_set_balloon = 1
let g:ale_open_list = 1
let g:ale_sign_column_always = 1
