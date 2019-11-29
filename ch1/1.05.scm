; If using normal-order evaluation, all expressions would be expanded before reducing them. Therefore,
; `(test 0 (p))` would expand to the following:

; ```scheme
; (if (= 0 0) 0 (p))
; ```

; After reducing the expressions, `(= 0 0)` will evaluate to `true` and return `0`. However, in the
; case of applicative-order evaluation, each of the individual expressions will be evaluated first
; rather than being expanded. So `(test 0 (p))` will evaluate to expressions `test`, `0`, and `(p)`.
; Evaluation of `(p)` will not complete, so program will hang. And indeed, this is what happens when
; trying the REPL.
