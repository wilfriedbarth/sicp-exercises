(define (pascal-triangle row col) 
  (cond ((or (< row 1) (< col 1) (> col row)) 0)
        ((or (<= row 2) (= col 1) (= col row)) 1)
        (else (+ (pascal-triangle (- row 1) (- col 1))
                 (pascal-triangle (- row 1) col)))))
