(
    prog((x '(a b c))(y '(1 2 3)) (z '(p q 10)))
    (format t "x = ~a y = ~a z = ~a" x y z) ;x = (A B C) y = (1 2 3) z = (P Q 10)
)

(defconstant PI 3.141592)

(defun area-circle(rad)
    (terpri)
    (format t "Radius: ~5f" rad)
    (format t "~%Area: ~10f" (* PI rad rad))
)
(area-circle 10)


; inc/decrement
(setq a 10)
(setq b 20)
(format t "~% Increment A by 3 = ~d" (incf a 3) )
(format t "~% Decrement B by 4 = ~d" (decf b 4) )
(print a) ; 13
(print b) ; 16

(format t "~% B % A = ~d" (mod b a))
(format t "~% A % B = ~d" (rem a b)) ; rem and mod give samething

; bool
(format t "~% Boolean cond.")
(setq a 10)
(setq b 20)

(format t "~% A = B is ~a" (= a b))
(format t "~% A /= B is ~a" (/= a b))
(format t "~% A > B is ~a" (> a b))
(format t "~% A < B is ~a" (< a b))
(format t "~% A >= B is ~a" (>= a b)) (format t "~% A « B is ~a" (<= a b))
(format t "~% Max of A and B is ~d" (max a b)) 
(format t "~% Min of A and B is ~d" (min a b))

; bitwise ops
(setq a 60)
(setq b 13)

(format t "~% BITWISE AND of a and b is ~a" (logand a b))
(format t "~% BITWISE INCLUSIVE OR of a and b is ~a" (logior a b))
(format t "~% BITWISE EXCLUSIVE OR of a and b is ~a" (logxor a b))
(format t "~% A NOT B is ~a" (lognor a b))
(format t "~% A EQUIVALANCE B is ~a" (logeqv a b))