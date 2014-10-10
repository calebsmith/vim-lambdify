" Conceal feature required to continue (vim ≥ 7.3)
if !has('conceal')
    finish
endif

syntax keyword rubyLambdaKeyword lambda conceal cchar=λ
syntax keyword rubyLambdaKeyword proc conceal cchar=λ
hi link rubyLambdaKeyword rubyKeyword

syntax match rubyLambdaOperator "->" conceal cchar=λ
hi link rubyLambdaOperator rubyOperator

hi! link Conceal rubyKeyword
hi! link Conceal rubyOperator

setlocal conceallevel=1
setlocal concealcursor=c
