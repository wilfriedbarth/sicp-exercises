(define (square a)
  (* a a))

(define (sum-squares a b)
  (+ (square a) (square b)))

(define (sum-squares-larger-two-numbers a b c)
  (cond ((= a b c) '())
        ((and (>= a c) (>= b c)) (sum-squares a b))
        ((and (>= b a) (>= c a)) (sum-squares b c))
        ((and (>= c b) (>= a b)) (sum-squares c a))))
