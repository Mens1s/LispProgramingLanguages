(defun swap2 (x)
    (loop for i from 0 to (- (length x) 1 ) by 2
    do
        (cond 
            (
                (< (+ 1 i) (length x))
                (setq temp (nth i x))

                (setf (nth i x) (nth (+ 1 i) x))

                (setf  (nth (+ 1 i) x) temp)
            )
        )
    )
  x
)
(setq my-list '(1 2 3 4 5 6))
(print (swap2 my-list))

(defun pairup(x y)
    (setq xLen (length x))
    (setq yLen (length y))
    (setq maxLen (max xLen yLen))
    (setq minLen (min xLen yLen))

    ; create 2d list
    (setq result (make-list maxLen))

    (loop for i from 0 to (- maxLen 1)
        do
            (cond
                (
                    (< i minLen)
                    (setf (nth i result) (list (nth i x) (nth i y)))
                )
                (
                    (> xLen yLen)
                    (setf (nth i result) (list (nth i x) -1))
                )
                (
                    (< xLen yLen)
                    (setf (nth i result) (list -1 (nth i y)))
                )
            )
    
    )
    result
)

;test
(setq x '(1 2 3 4 5))
(setq y '(6 7 8 9 10 11 12))
(print (pairup x y))


(loop for i from 0 to 10
    do 
        (progn
            (loop for j from 0 to 10

                do 
                    (cond
                        (
                            (= 1 1)
                            (format t "~a ~a~%" i j)
                        )
                        
                    )

            
            )
        )

)

(defun fibonacci (x)
    (cond
        (
            (= 0 x)
            0
        )
        (
            (= x 1)
            1
        )
        (
            (> x 1)
            (+ (fibonacci (- x 1) ) (fibonacci (- x 2)))
        )        
    )
)
(print (fibonacci 5))