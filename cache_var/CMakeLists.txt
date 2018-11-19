project(cache_test NONE)

message("before set")
message("a: ${a}")
message("b: ${b}")

set(a "this is a")
set(b "this is b" CACHE STRING "help msg for b")

message("after set")
message("a: ${a}")
message("b: ${b}")

set(a "this is another a")
set(b "this is another b" CACHE STRING "help msg for b")

message("after second set")
message("a: ${a}")
message("b: ${b}")
