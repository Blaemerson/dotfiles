function! ReloadJustart()
lua << EOF
    for k in pairs(package.loaded) do
        if k:match("^justart") then
            package.loaded[k] = nil
        end
    end
EOF
endfunction

nnoremap <Leader>pra :call ReloadJustart()<CR>
nnoremap <Leader>ptt :lua require("justart").setup()<CR>
