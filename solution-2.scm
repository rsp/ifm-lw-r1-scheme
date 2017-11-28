(define f2 (lambda (a) (lambda (b) (lambda (c)
  (((a (lambda (d) (lambda (e) (e (d b))))) (lambda (f) c)) (lambda (g) g))))))
