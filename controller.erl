-module(controller).
-author("Andrew Ho").
-export([main/0]).

main() ->
	Pid_1 = spawn(fun temperature_converter:loop/0),
	Pid_2 = spawn(fun temperature_converter:loop/0),
	Pid_1 ! {"ConvertToCelsius",0},
	Pid_1 ! {"ConvertToCelsius",25},
	Pid_1 ! {"ConvertToCelsius",50},
	Pid_1 ! {"ConvertToCelsius",100},
	Pid_2 ! {"ConvertToFahrenheit",0},
	Pid_2 ! {"ConvertToFahrenheit",25},
	Pid_2 ! {"ConvertToFahrenheit",50},
	Pid_2 ! {"ConvertToFahrenheit",100}.

