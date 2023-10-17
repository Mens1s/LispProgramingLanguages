; comment line
(+ 7 9 11) ; 27 but not printed

(write (+ 7 9 11)) ; 27 but printed

(write (+(*(/ 9 5) 60) 32 ) ) ; fahrenit converter - write-line not working

(write-line "Hello World") ; Write string

(write '(* 2 5)) ; writes * 2 5 ; write-line not working

(write (* 2 5))

(print "welcome to the real f*world")

; Variables
(setq xv 10)
(setq yv 34.567)
(setq chv nil)
(setq nv 123.78)
(setq bgv 11.0e+4)
(setq rv 124/2)

(print xv)
(print yv)
(print chv)
(print nv)
(print bgv)
(print rv)

; variables vol.2
(defvar x 2)
(defvar y 34.567)
(defvar ch nil)
(defvar n 123.78)
(defvar bg 11.0e+4)
(defvar r 124/2)

(print (type-of x)); integer- fixnum
(print (type-of y)); single-float
(print (type-of ch)); null
(print (type-of n))
(print (type-of bg))
(print (type-of r))

; macro
(
    defmacro setTo10(num)
    (setq num 10)(print num)
)
(setq x 25)
(print x)
(setTo10 x)

;
(defvar xyz 123)
(print xyz)

;format

(setq xx 10)
(setq yy 20)
(format t "xx = ~3d yy = ~3d ~%"xx yy)

(setq xx 100)
(setq yy 200)
(format t "xx = ~4d yy = ~4d"xx yy)

;let 
(
    let ((x 'a) (y 'b)(z 'c))
    (format t "x = ~a y = ~a z = ~a"x y z)
) ; x = A y = B z = C

(write-line " ")

(
    let ((x 'a)(y 'b)(z 'c))
    (format t "x = d y = d z = d"x y z)
    (write-line " ")
    (format t "x = ~a y = ~a z = ~a"x y z)

)

