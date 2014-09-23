" Conceal feature required to continue (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" Remove keywords to be re-added later
syntax clear Function

" Conceal 'function' with a lambda character
syntax keyword jsFunction function conceal cchar=λ

" Link up syntax
hi link jsFunction Function
hi! link Conceal Function

" Set conceallevel/cursor
setlocal conceallevel=1
setlocal concealcursor=c
