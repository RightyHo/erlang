-module(temperature_converter).
-author("Andrew Ho").
%	-export([ConvertToCelsius/2]).
%	-export([ConvertToFahrenheit/2]).
-export([loop/0]).

loop() -> receive
	{"ConvertToCelsius",X} ->
		F2C = spawn(fun display:loop/0),
		Celsius = (X - 32) * 5/9,
		F2C ! {Celsius,X},
		loop();
	{"ConvertToFahrenheit",X} ->
		C2F = spawn(fun display:loop/0),
		Fahrenheit = (X * 9/5) + 32,
		C2F ! {X,Fahrenheit},
		loop();
	{_,X} ->
		io:format("The conversion you requested for ~s was not recognised! ~n",[X]),
		loop()
	end.
		
		
%	ConvertToCelsius(Fahrenheit) ->
%		{"ConvertToCelsius",Fahrenheit}.
		
		
%	ConvertToFahrenheit(Celsius) ->
%		{"ConvertToFahrenheit",Celsius}.


