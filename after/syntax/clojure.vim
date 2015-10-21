call vimlambdify#lambdify("clojureSpecialForm", "clojureFnSpecialForm", "fn")
call vimlambdify#lambdify("clojureMacro", "clojureDefnMacro", "defn")
call vimlambdify#lambdify_match("clojureReader", "clojureAnonymousFunctionLiteral", "/#\\((\\)\\@=/")
