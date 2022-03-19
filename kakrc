source "%val{config}/plug.kak/rc/plug.kak"
plug "andreyorst/plug.kak" noload

# copy
hook global NormalKey y|d|c %{ nop %sh{
      printf %s "$kak_main_reg_dquote" | xsel --input --clipboard
}}

# paste
map global normal p '!xsel --output --clipboard<ret>'
map global normal R '|xsel --output --clipboard<ret>'
map global menu <space> '<c>N'

source "%val{config}/init.kak"
