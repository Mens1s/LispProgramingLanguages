; List - Functions
(defun averagenum (n1 n2 n3 n4)
    (/ (+ n1 n2 n3 n4) 4)
)
(write (averagenum 10 20 30 40))

; defun
(defun area-circle (rad)
    (terpri)
    (format t "Radius: ~5f" rad)
    (format t "~%Area: ~10f" (* 3.141592 rad rad))
)
(area-circle 5)

; optional
(defun show-members (a b &optional c d) (write (list a b c d)) )
(terpri)
(show-members 1 2 3)
(terpri)
(show-members 'a 'b 'c 'd)
(terpri)
(show-members 'a 'b)
(terpri)
(show-members 1 2 3 4)

; rest
(print "rest")
(defun show-members (a b &rest values) (write (list a b values)))
(terpri)
(show-members 1 2 3)
(terpri)
(show-members 'a 'b 'c 'd)
(terpri)
(show-members 'a 'b)
(terpri)
(show-members 1 2 3 4)
(terpri)
(show-members 1 2 3 4 5 6 7 8 9)

; key
(print "key")
(defun show-members (&key a b c d) (write (list a b c d)))
(terpri)
(show-members :a 1 :b 2 :d 3)
(terpri)
(show-members :a 'p :b 'q :c 'r :d 's)
(terpri)
(show-members :a 'p :d 'q)
(terpri)
(show-members :a 1 :b 2)

; returning values functions
(format t "~%return~%")
(defun add-all(a b c d) (+ a b c d))
(setq sum (add-all 10 20 30 40))
(write sum)
(terpri)
(write (add-all 23.4 56.7 34.9 10.0))

; return-from
(format t "~%return from~%")
(defun myfunc (num)
    (return-from myfunc 10)
    num
)
(write (myfunc 20))

; mapcar
(format t "~%mapcar~%")
(write (mapcar '1+ '(23 34 45 56 67 78 89))) ; be carefull '1+ has to be betweeen / bitisik

(format t "~%mapcar using lambda~%")
(write (mapcar (lambda (x) (+ x 3)) '(23 34 45 56 67 78 89))) ; lambda

; lambda
(format t "~%lambda~%")
(defun cubeMyList(lst)
    (mapcar #'(lambda(x) (* x x x)) lst)
    ;(mapcar (lambda(x) (* x x x)) lst) samething
)
(write (cubeMyList '(2 3 4 5 6 7 8 9)))

; mapcar
(format t "~%mapcar using smth~%")
(write (mapcar '+ '(1 3 5 7 9 11 13) '(2 4 6 8))) ; (3 7 11 15)

; lisp - predicates
(format t "~%predicates~%")

(write (atom 'abcd))
(terpri)
(write (equal 'a 'b));Nill
(terpri)
(write (evenp 10))
(terpri)
(write (evenp 7));Nill
(terpri)
(write (oddp 7))
(terpri)
(write (zerop 0.00000001)) ;Nill
(terpri)
(write (eq 3 3.0));Nill
(terpri)
(write (equal 3 3.0));Nill
(terpri)
(write (null nil))
(terpri)