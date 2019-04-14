(define (cbrt x)
  (cbrt-iter 1.0 0.0 x))

(define (cbrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
    guess
    (cbrt-iter (improve guess x) guess x)))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) guess)) .0001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* guess 2)) 3))
