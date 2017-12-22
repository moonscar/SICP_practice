; 1.6 1.8都没法运行
; 题目中给定的公式
(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
    (< (abs (- guess x)) 0.1))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
            guess
            (cube-root-iter (improve guess x)
                        x)))

(define (cube-root x)
    (cube-root-iter 1.0 x))

(cube-root 27)