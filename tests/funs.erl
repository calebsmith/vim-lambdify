-module(funs).

-export([s/1, k/1, i/1, y/1, memoize/1]).


%%% SKI combinators
i(X) -> X.

k(X) ->
    fun(F) -> X end.

s(F) ->
    fun(G) ->
        fun(X) ->
            (F(X))(G(X))
        end
    end.

%%% Y combinator
y(F) ->
    F (fun (X) -> (y (F)) (X) end).


memoize (F) ->
    fun (X) ->
        Table = ets:new (?MODULE, [ private ]),
        Result = (y (memoize (Table, F))) (X),
        ets:delete (Table),
        Result
    end.


memoize (Table, F) ->
    fun(B) ->
        fun(C) ->
            case ets:lookup(Table, C) of
                [] ->
                    Result = (F (B)) (C),
                    ets:insert(Table, {C, Result}),
                    Result;
                [{C, Result}] ->
                    Result
            end
        end
    end.
