(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) guess)) .0001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

; Let's examine why the `good-enough?` test given in the book fails for small and larger numbers.

; For small numbers, let's say we want to find the square root of `.00004`. If we plug that into the
; `sqrt` function given in the book, we get `0.031675`. That is a far cry from the actual square
; root, which is `0.006324`. The reason why this occurs is because it is impossible to get close
; to the actual value given the tolerance of the `good-enough?` function (`.001`). For example, if we
; were to guess `0.01` as the sqrt, the `good-enough?` test would basically reduce down to
; `.0001 < .001`, which is true. Thus, the tolerance restricts any further recursion that would get
; close to the actual square root of `0.00004`.

; For large numbers, let's say we want to find the square root of some really large number like
; `1e13`. When I tried that, this results in an infinite loop. The reason why this occurs
; is that for large numbers `good-enough?` will never return true because the computer will not
; be able to represent the guess as a floating point number to a precision of `0.001`.

; Let's design an improved `sqrt` implementation that compares the current guess with prior guess.

; ```scheme
; (define (sqrt x)
;   (sqrt-iter 1.0 0.0 x))

; (define (sqrt-iter guess prev-guess x)
;   (if (good-enough? guess prev-guess)
;     guess
;     (sqrt-iter (improve guess x) guess x)))

; (define (good-enough? guess prev-guess)
;   (< (abs (/ (- guess prev-guess) guess)) .0001))

; (define (improve guess x)
;   (/ (+ guess (/ x guess)) 2))
; ```

; Using our prior examples for small and large numbers, the new implementation gives more accurate
; results.

; ```scheme
; (sqrt 0.00004)
; => 0.006324
; (sqrt 1e13)
; => 3162277.66
; ```
