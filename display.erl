-module(display).
-author("Andrew Ho").
%	-export([Temperature/2]).
-export([loop/0]).


loop() -> receive
	{Celsius,Fahrenheit} ->
		io:format("The temperature in Celsius is ~fC,~n and the equivalent temperature in Fahrenheit is ~fF!~n",[Celsius,Fahrenheit]),
		loop()
	end.

%	Temperature(Celsius,Fahrenheit) ->
%		{Celsius,Fahrenheit}.
	