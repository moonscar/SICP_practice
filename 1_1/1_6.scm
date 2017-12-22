; 本题目所需要的辅助函数

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- guess x)) 0.001))

; 用cond自定义的new-if
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

; (define (sqrt-iter guess x)
;     (new-if (good-enough? guess x)          ; <-- new-if 在这里
;             guess
;             (sqrt-iter (improve guess x)
;                         x)))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                        x)))

(define (sqrt x)
    (sqrt-iter 1 x))

(sqrt 9)