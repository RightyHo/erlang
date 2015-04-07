-module(temperature_converter).
-author("Andrew Ho").
-export([loop/0]).

loop() ->
	receive
		{}