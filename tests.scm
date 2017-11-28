(load "./helpers.scm")
(load "./solution-2.scm")

(debug-set! stack 200000)

(define n 0)

(define (test m)
  (begin (display "# ") (display m) (newline)))

(define (equal a b)
  (begin
    (set! n (+ n 1))
    (if (= a b)
      (begin (display "ok ") (display n) (newline))
      (begin (display "not ok ") (display n) (newline) (exit 1)))))

(test "count function")
(equal (count (lambda (f) (lambda (x) x))) 0)
(equal (count (lambda (f) (lambda (x) (f x)))) 1)
(equal (count (lambda (f) (lambda (x) (f (f (f (f x))))))) 4)
(equal (count (lambda (f) (lambda (x) (f (f (f (f (f (f (f x)))))))))) 7)

(test "sample input")
(equal (count input1) 1)
(equal (count input2) 2)
(equal (count input3) 10)
(equal (count input4) 100)
(equal (count input5) 1000)

(test "solution-2")
(equal (count (f2 input1)) 0)
(equal (count (f2 input2)) 1)
(equal (count (f2 input3)) 9)
(equal (count (f2 input4)) 99)
(equal (count (f2 input5)) 999)

(test "all tests passed")
