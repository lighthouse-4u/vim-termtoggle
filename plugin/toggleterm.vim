if exists('g:loaded_termtoggle_plugin') || v:version < 800
    finish
endif
let g:loaded_termtoggle_plugin = 1

function s:ToggleTerminal()
    " If a terminal is open, hide it
    if win_gotoid(get(s:, 'terminal_id', 0))
        hide
    else
        call s:OpenTerminal()
    endif
endfunction

function s:OpenTerminal()
    " Create a new split at the bottom, then resize it
    bot new
    exec 'resize' . get(g:, 'termtoggle_terminal_size', 14)

    " If no terminal is active, create one
    if !bufexists(get(s:, 'terminal_buffer', -1))
        call s:CreateTerminal()
    " Otherwise, reopen the hidden terminal in current split
    else
        exec 'buffer ' . s:terminal_buffer
    endif

    let s:terminal_buffer = bufnr('')
    let s:terminal_id = win_getid()
endfunction

function s:CreateTerminal()
    " If the user has specified a shell, use that one, otherwise pick the default one
    call termopen(get(g:, 'termtoggle_shell', $SHELL))

    if get(g:, 'termtoggle_numbers', 0) == 1
        set number
    else
        set nonumber
    endif
    startinsert
endfunction

command! TermToggle call s:ToggleTerminal()
