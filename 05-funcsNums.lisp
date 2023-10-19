; function
(defun factorial (num)
    (cond ((zerop num) 1)
        (t (* num (factorial (- num 1))))
    )
)
(setq n 6)
(format t "~% Factorial ~d is: ~d~%" n (factorial n))

; array
(write (setf my-array (make-array '(10))))
(terpri)
(setf (aref my-array 0) 25)
(setf (aref my-array 1) 23)
(setf (aref my-array 2) 45)
(setf (aref my-array 3) 10)
(setf (aref my-array 4) 20)
(setf (aref my-array 5) 17)
(setf (aref my-array 6) 25)
(setf (aref my-array 7) 19)
(setf (aref my-array 8) 67)
(setf (aref my-array 9) 30)
(write my-array)

; dimensions of array
(format t "~%")
(setf x (make-array '(3 3)
    :initial-contents '((0 1 2) (3 4 5) (6 7 8))
))
(write x)

; loop with arrays
(setq a (make-array '(4 3)))
(dotimes (i 4)
    (dotimes (j 3)
        (setf (aref a i j) (list i 'x j '= (* i j)))
    )
)
(dotimes (i 4)
    (dotimes (j 3)
        (print (aref a i j))
    )
)

; loop with defined
(setq x 10)
(setq y 10)
(setq a (make-array (list x y)))

(dotimes (i x)
    (dotimes (j y)
        (setf (aref a i j) (list i 'x j '= (* i j)))
    )
)
(dotimes (i x)
    (dotimes (j y)
        (print (aref a i j))
    )
)
; 3d array
(setq myarray (make-array '(3 2 3)
    :initial-contents
    '(
        (
            (a b c) (1 2 3)
        )
        (
            (d e f) (4 5 6)
        )
        (
            (g h i) (7 8 9)
        )
    )
))
(setq array2 (make-array '(3 5) :displaced-to myarray :displaced-index-offset 2)) ; doldurur bu arada hiç banamısın demez ama yoksa patlar '(3 5) => 15
(terpri)
(write myarray)
(terpri)
(write array2) ; c 1 2 3 2. indexten itibaren 4 lük al 