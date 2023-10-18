; condition
(setq a 19)
(cond (;if
        (> a 20)
        (format t "~% a is greater than 20")
    );else
    (t (format t "~% value of a is ~d" a))
)

; else
(setq b 10)
(if
    (> b 20)
    then (format t "~% b is less than 20")
)
(format t "~% value of b is ~d" b)

; if-else
(setq c 100)
(if (> c 20)
    (format t "~% c is greater than 20");if
    (format t "~% c is less than 20");else
)
(format t "~% value of c is ~d"c)

; when
(setq d 100)
(when (> d 20)
    (format t "~% d is greater than 20");if
    (format t "~% d is less than 20");else
)
(format t "~% value of d is ~d"d)

; case - switch-case
(setq day 11)
(case day
    (1 (format t "~% Monday"))
    (2 (format t "~% Tuesday"))
    (3 (format t "~% Wednesday"))
    (4 (format t "~% Thursday"))
    (5 (format t "~% Friday"))
    (6 (format t "~% Saturday"))
    (7 (format t "~% Sunday"))
    (t (format t "~% Invalid day! ~%"))
)

; loop
(setq e 10)
(loop
    (setq e (+ e 1))
    (write e)
    (terpri)
    (when (> e 17) (return e) )
)

; loop word like list
(loop for x in '(tom dick harry)
    do (format t " ~s" x)
)

; loop numbers like list
(format t "~%")
(loop for x in '(5 10 15)
    do (format t " ~2d" x)
)

; loop format like list
(format t "~%") 
(loop for x in '(5 10 15)
    do (format t " ~4f" x)
)

; loop range
(loop for a from 10 to 20
    do (print a); 10\n ... 20\n
)

; loop if
(loop for x from 1 to 20
    if(evenp x) 
    do(print x)
    else
    do(print "Not even")
)

; do loop
(
    do (
        (x 0 (+ 2 x))
        (y 20 (- y 2))
    )
    ((= x y)(- x y)) ; condition statement
    (format t "~% x = ~d y = ~d"x y)
)

; dotimes
(
    dotimes (n 11)
        (print n) (prin1 (* n n))
)

; dolist
(
    dolist (n '(1 2 3 4 5 6 7 8 9))
        (format t "~% Number : ~d Square : ~d" n (* n n))
)

; functs
(defun demo-function (flag)
  (print 'entering-outer-block)
  
  (block outer-block
    (print 'entering-inner-block)
    
    (print (block inner-block
             (if flag
                 (return-from outer-block 3)
                 (return-from inner-block 5)
    )
    
    (print 'This-will-not-be-printed))
  )
  
  (print 'left-inner-block)
  (print 'leaving-outer-block)
  )
)

(demo-function t)
(terpri)
(demo-function nil)