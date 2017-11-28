(define e (lambda (a) (lambda (b) (lambda (c) (if (= c 0) a (((e (b a)) b) (- c 1)))))))
(define f1 (lambda (a) (lambda (b) (lambda (c) (- (((e c) b) ((a (lambda (a) (- a 1))) 0)) 1)))))
