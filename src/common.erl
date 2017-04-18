%%%-------------------------------------------------------------------
%%% @author root <root@localhost.heller>
%%% @copyright (C) 2017, root
%%% @doc
%%%
%%% @end
%%% Created : 22 Jan 2017 by root <root@localhost.heller>
%%%-------------------------------------------------------------------
-module(common).

-export([
         start/0
        ]).

start()->
    Apps = [sasl, common],
    lists:map(fun(App)-> start_apps(App) end, Apps).


start_apps(App)->
    case application:start(App) of
        ok -> ok;
        {error, R} -> erlang:throw({error, R})
    end.
