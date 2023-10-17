#!/usr/bin/env sbcl --script

sbcl --script xxx.lisp
clisp 02-cont.lisp 

# Lisp Code Examples

This repository contains Lisp code snippets covering various concepts, from basic arithmetic operations to advanced macros and bitwise operations.

## Table of Contents

- [Arithmetic Operations](#arithmetic-operations)
- [Variables](#variables)
- [Macros](#macros)
- [Format](#format)
- [Let](#let)
- [Constants](#constants)
- [Functions](#functions)
- [Increment/Decrement](#incrementdecrement)
- [Boolean Operations](#boolean-operations)
- [Bitwise Operations](#bitwise-operations)

## Arithmetic Operations

```lisp
; Basic arithmetic operations
(+ 7 9 11) ; Result: 27 (not printed)
(write (+ 7 9 11)) ; Result: 27 (printed)
(write (+ (* (/ 9 5) 60) 32)) ; Fahrenheit converter - write-line not working

(write-line "Hello World") ; Write string
(write '(* 2 5)) ; Writes: * 2 5 ; write-line not working
(write (* 2 5)) ; Result: 10

(print "welcome to the real f*world")
```

## Variables

```lisp
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

; Variables vol.2
(defvar x 2)
(defvar y 34.567)
(defvar ch nil)
(defvar n 123.78)
(defvar bg 11.0e+4)
(defvar r 124/2)

(print (type-of x)) ; integer- fixnum
(print (type-of y)) ; single-float
(print (type-of ch)) ; null
(print (type-of n))
(print (type-of bg))
(print (type-of r))
```

## Macros

```lisp
; Macro
(defmacro setTo10 (num)
  (setq num 10)
  (print num))

(setq x 25)
(print x)
(setTo10 x)

(defvar xyz 123)
(print xyz)
```

## Format

```lisp
; Format
(setq xx 10)
(setq yy 20)
(format t "xx = ~3d yy = ~3d ~%" xx yy)

(setq xx 100)
(setq yy 200)
(format t "xx = ~4d yy = ~4d" xx yy)
```

## Let

```lisp
; Let
(let ((x 'a) (y 'b) (z 'c))
  (format t "x = ~a y = ~a z = ~a" x y z)) ; x = A y = B z = C

(write-line " ")

(let ((x 'a) (y 'b) (z 'c))
  (format t "x = d y = d z = d" x y z)
  (write-line " ")
  (format t "x = ~a y = ~a z = ~a" x y z))
```

## Constants

```lisp
; Constants
(defconstant PI 3.141592)
```

## Functions

```lisp
; Functions
(defun area-circle (rad)
  (terpri)
  (format t "Radius: ~5f" rad)
  (format t "~%Area: ~10f" (* PI rad rad)))

(area-circle 10)
```

## Increment/Decrement

```lisp
; Increment/Decrement
(setq a 10)
(setq b 20)
(format t "~% Increment A by 3 = ~d" (incf a 3))
(format t "~% Decrement B by 4 = ~d" (decf b 4))
(print a) ; Result: 13
(print b) ; Result: 16
```

## Boolean Operations

```lisp
; Boolean Operations
(format t "~% Boolean cond.")
(setq a 10)
(setq b 20)

(format t "~% A = B is ~a" (= a b))
(format t "~% A /= B is ~a" (/= a b))
(format t "~% A > B is ~a" (> a b))
(format t "~% A < B is ~a" (< a b))
(format t "~% A >= B is ~a" (>= a b))
(format t "~% A <= B is ~a" (<= a b))
(format t "~% Max of A and B is ~d" (max a b))
(format t "~% Min of A and B is ~d" (min a b))
```

## Bitwise Operations

```lisp
; Bitwise Operations
(setq a 60)
(setq b 13)

(format t "~% BITWISE AND of a and b is ~a" (logand a b))
(format t "~% BITWISE INCLUSIVE OR of a and b is ~a" (logior a b))
(format t "~% BITWISE EXCLUSIVE OR of a and b is ~a" (logxor a b))
```

Feel free to explore each section for detailed Lisp code examples and explanations.