(define (f row col)
  (cond
    ((= row 1) 1)
    ((= col 1) 1)
    (else (+ (f (- row 1) col) (f row (- col 1))))
    ))
  
(f 2 3)