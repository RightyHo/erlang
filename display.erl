-module(display).
-author("Andrew Ho").
%	-export([Temperature/2]).
-export([loop/0]).


loop() -> receive
	{"Error",_} ->
		io:format("The conversion you requested was not recognised! ~n"),
		loop();
	{Celsius,Fahrenheit} ->
		io:format("The temperature in Celsius is ~s!",[Celsius]),
		io:format("The temperature in Fahrenheit is ~s!",[Fahrenheit])
	end.


%	Temperature(Celsius,Fahrenheit) ->
%		{Celsius,Fahrenheit}.
	