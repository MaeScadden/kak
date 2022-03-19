set global indentwidth 2
set global tabstop 2
set global ui_options ncurses_enable_mouse=true

# extend git
# add \o
# sudo ?
# lsp

map global normal <space> , -docstring 'leader'

hook global InsertCompletionShow .* %{
    try %{
        execute-keys -draft 'h<a-K>\h<ret>'
        map window insert <tab> <c-n>
        map window insert <s-tab> <c-p>
        hook -once -always window InsertCompletionHide .* %{
            map window insert <tab> <tab>
            map window insert <s-tab> <s-tab>
        }
    }
}

# number column
add-highlighter global/ number-lines -relative -separator ' '

# soft wrap
add-highlighter global/ wrap -word -indent

