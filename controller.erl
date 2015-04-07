-module(controller).
-author("Andrew Ho").

main() ->
	Pid_1 = spawn(fun temperature_converter:loop/0).
	Pid_2 = spawn(fun temperature_converter:loop/0).

	Pid_1 ! 0.
	Pid_1 ! 25.
	Pid_1 ! 50.
	Pid_1 ! 100.
	Pid_2 ! 0.
	Pid_2 ! 25.
	Pid_2 ! 50.
	Pid_2 ! 100.
end.

