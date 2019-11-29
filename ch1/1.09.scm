; For first procedure, evaluation would proceed as follows:

; ```scheme
; (+ 4 5)
; (inc (+ (dec 4) 5))
; (inc (+ 3 5))
; (inc (inc (+ (dec 3) 5)))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ (dec 2) 5))))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ (dec 1) 5)))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
; ```

; This is a recursive process.

; For second procedure, evaluation would proceed as follows:

; ```scheme
; (+ 4 5)
; (+ (dec 4) (inc 5))
; (+ 3 6)
; (+ (dec 3) (inc 6))
; (+ 2 7)
; (+ (dec 2) (inc 7))
; (+ 1 8)
; (+ (dec 1) (inc 8))
; (+ 0 9)
; 9
; ````

; This is an iterative process.

; Both procedures utilize recursive functions. However, they evaluate via different processes.
; The recursive process is in general slower and consumes more memory from the stack due to deferring
; computation via expand / reduce process (potentially causing stack overflow). The iterative process
; is in general faster and consumes less memory due to immediate computation at each step and retention
; of intermediate results within each iteration. This means that for languages that implement tail-call
; optimization (like Scheme), the compiler will drop stack frames it no longer needs to retain. However,
; for imperative languages (like C) that do not tail-call optimize, one has to rely on for-loop constructs
; to accomplish iteration in an efficient manner.
