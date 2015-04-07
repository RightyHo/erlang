-module(controller).
-author("Andrew Ho").





Pid_1 = spawn(fun temperature_converter:ConvertToCelsius/1).
Pid_2 = spawn(fun temperature_converter:ConvertToFahrenheit/1).
Pid_3 = spawn(fun temperature_converter:ConvertToCelsius/1).
Pid_4 = spawn(fun temperature_converter:ConvertToFahrenheit/1).

Pid_1 ! 50.
Pid_1 ! 100.
Pid_2 ! 50.
Pid_2 ! 100.
Pid_3 ! 0.
Pid_3 ! 25.
Pid_4 ! 0.
Pid_4 ! 25.