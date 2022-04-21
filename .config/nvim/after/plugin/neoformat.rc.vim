function DoFormat()
  if has("nvim")
    lua vim.lsp.buf.formatting_sync(nil, 1000)
  endif
endfunction

autocmd BufWritePre *.js call DoFormat()
autocmd BufWritePre *.ts call DoFormat()
autocmd BufWritePre *.html Neoformat

nnoremap <silent>ff <cmd>Neoformat<CR><Esc>:w<CR>
