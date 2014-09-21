" Conceal feature required to continue (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" Remove keywords to be re-added later
syntax clear javaScriptFunction

" Conceal 'function' with a lambda character
syntax keyword jsNiceFunction function conceal cchar=λ

" Link up syntax
hi link jsNiceFunction javaScriptFunction
hi! link Conceal javaScriptFunction

" Set conceallevel/cursor
setlocal conceallevel=1
setlocal concealcursor=c
