-module(hello).
-export([print_hello_world/1]).

print_hello_world(0) ->
    ok;
print_hello_world(N) when N > 0 ->
    io:fwrite("Hello World\n"),
    print_hello_world(N - 1).
