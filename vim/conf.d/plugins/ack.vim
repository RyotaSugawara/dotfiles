cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

let g:ack_use_dispatch = 1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
