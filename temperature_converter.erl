-module(temperature_converter).
-author("Andrew Ho").
-export([ConvertToCelsius/1]).
-export([ConvertToFahrenheit/1]).
-export([loop/0]).

loop() -> receive
	{"ConvertToCelsius",X} ->
		F2C = spawn(fun display:loop/0),
		F2C ! {(X - 32) * 5/9,X},
		loop();
	{"ConvertToFahrenheit",X} ->
		C2F = spawn(fun display:loop/0),
		C2F ! {X,(X * 9/5) + 32},
		loop();
	{_,X} ->
		Wrong = spawn(fun display:loop/0),
		Wrong ! {"Error","Error"}
		loop()
	end.
		
		
ConvertToCelsius(Fahrenheit) ->
	{"ConvertToCelsius",Fahrenheit}.
		
		
ConvertToFahrenheit(Celsius) ->
	{"ConvertToFahrenheit",Celsius}.


