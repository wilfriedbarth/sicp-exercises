; `new-if` will cause a stack overflow b/c each recursive call will add a new call to the call stack.
; The `if` form of Scheme uses tail recursion to avoid adding a new call to the call stack for each
; successive recursive call.
