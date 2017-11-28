(define (e a b c) (if (= c 0) a (e (b a) b (- c 1))))
(define (f a) (lambda (b) (lambda (c)
  (e c b (- ((a (lambda (a) (+ a 1))) 0) 1)))))
