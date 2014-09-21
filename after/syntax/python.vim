" Conceal feature required to continue (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" Remove keywords to be re-added later
syntax clear pythonOperator

" Conceal 'lambda' with a lambda character
syntax keyword pyNiceStatement lambda conceal cchar=λ

" Link up syntax
hi link pyNiceStatement Statement
hi! link Conceal Operator

" Set conceallevel/cursor
setlocal conceallevel=1
setlocal concealcursor=c
