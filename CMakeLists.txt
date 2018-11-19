
message("a: ${a}")
message("b: ${b}")
set(a this is a)
ret(b this is b CACHE STRING "help msg for b")
message("a: ${a}")
message("b: ${b}")
