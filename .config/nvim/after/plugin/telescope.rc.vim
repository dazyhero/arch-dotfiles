if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> ;b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap <silent> gr <cmd>Telescope lsp_references<cr>
nnoremap <silent> gr <cmd>Telescope lsp_references<cr>
nnoremap <Leader><CR> <cmd>Telescope lsp_code_actions<CR>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    file_ignore_patterns = {
        ".git",
        "node_modules"
    },
    mappings = {
      i = {
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-j>"] = actions.move_selection_next,
          ["<esc>"] = actions.close
      }
    }
  }
}
EOF

