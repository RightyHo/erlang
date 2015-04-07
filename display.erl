-module(display).
-author("Andrew Ho").
%	-export([Temperature/2]).
-export([loop/0]).


loop() -> receive
	{Celsius,Fahrenheit} ->
%		C = erlang:float_to_list(Celsius),
%		F = erlang:float_to_list(Fahrenheit),
		io:format("The temperature in Celsius is ~fC,~n and the equivalent temperature in Fahrenheit is ~fF!~n",[Celsius,Fahrenheit]),
%		io:format("The temperature in Celsius is ~s!",[C]),
%		io:format("The temperature in Fahrenheit is ~s!",[F]),
		loop()
	end.

%	Temperature(Celsius,Fahrenheit) ->
%		{Celsius,Fahrenheit}.
	