-module(temperature_converter).
-author("Andrew Ho").
-export([ConvertToCelsius/1]).
-export([ConvertToFahrenheit/1]).

ConvertToCelsius(float) ->
	Pid = spawn(fun display:Temperature/2),
	Pid ! {(float - 32) * 5/9,float}
	end.	
		
		
		
ConvertToFahrenheit(float) ->
	Pid = spawn(fun display:Temperature/2),
	Pid ! {float,(float * 9/5) + 32}
	end.


