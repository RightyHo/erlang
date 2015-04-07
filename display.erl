-module(display).
-author("Andrew Ho").
-export([Temperature/2]).
-export([loop/0]).


loop() -> receive
	{"Error","Error"} ->
		io:format("The conversion you requested was not recognised! ~n"),
		loop();
	{_,_} ->
		io:format("~p The temperature in Celsius is: ~p~n" [Celsius]),
		io:format("~p The temperature in Fahrenheit is: ~p~n" [Fahrenheit])
	end.


Temperature(Celsius,Fahrenheit) ->
	{Celsius,Fahrenheit}.
	