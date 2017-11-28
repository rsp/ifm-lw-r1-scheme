(define input1 (lambda (x) (lambda (y) (x y))))

(define input2 (lambda (x) (lambda (y) (x (x y)))))

(define input3 (lambda (x) (lambda (y) (x (x (x (x (x (x (x (x (x (x y)))))))))))))

(define input4 (lambda (x) (input3 (input3 x))))

(define input5 (lambda (x) (input3 (input4 x))))

(define count (lambda (a) ((a (lambda (x) (+ x 1))) 0)))
