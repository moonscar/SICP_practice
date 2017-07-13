(define (sum-of-squares a b)
    (+ (* a a) (* b b)))

(define (larger a b)
    (if (< a b)
        b
        a))

(define (sum-of-larger-squares a b c)
    (sum-of-squares 
        (larger a b)
        (larger c (- (+ a b) (larger a b)))))

(sum-of-lager-squares 3 2 1)