; 4-a-plus-abs-b.scm

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; 判断b是否大于0，然后返回+或者-方法（内置）

; 1 + 1 -> 1 + |1|
(a-plus-abs-b 1 1)
; 1 - (-1) -> 1 + |-1|
(a-plus-abs-b 1 -1)