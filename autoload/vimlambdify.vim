function! vimlambdify#lambdify(type_name, new_type, keyword)
    " Conceal feature required to continue (vim ≥ 7.3)
    if !has('conceal')
        finish
    endif

    " Conceal 'function' with a lambda character
    execute "syntax keyword " a:new_type a:keyword "conceal cchar=λ"

    " Link up syntax
    execute "hi link" a:new_type a:type_name
    execute "hi! link Conceal " a:type_name

    " Set conceallevel/cursor
    setlocal conceallevel=1
    setlocal concealcursor=c
endf


function! vimlambdify#lambdify_match(type_name, new_type, pattern)
    " Conceal feature required to continue (vim ≥ 7.3)
    if !has('conceal')
        finish
    endif

    " Conceal 'function' with a lambda character
    execute "syntax match " a:new_type  a:pattern "conceal cchar=λ"

    " Link up syntax
    execute "hi link" a:new_type a:type_name
    execute "hi! link Conceal " a:type_name

    " Set conceallevel/cursor
    setlocal conceallevel=1
    setlocal concealcursor=c
endf
