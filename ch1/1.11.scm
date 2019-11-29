(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1)) (* 2 (f-recur (- n 2))) (* 3 (f-recur (- n 3))))))

(define (f-iter n)
  (f-iter-helper 2 1 0 2 n))

(define (f-iter-helper a b c count final-count)
  (cond ((= final-count 0) 0)
        ((= final-count 1) 1)
        ((= final-count 2) 2)
        ((= final-count count) a)
        (else (f-iter-helper (new-a a b c) (new-b a) (new-c b) (+ count 1) final-count))))

(define (new-a old-a old-b old-c)
  (+ old-a (* 2 old-b) (* 3 old-c)))

(define (new-b old-a) 
  old-a)

(define (new-c old-b)
  old-b)
