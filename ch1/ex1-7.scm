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
