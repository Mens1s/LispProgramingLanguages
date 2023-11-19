;1. Parametre olarak liste alan bir fonksiyon yazın. İç içe listeler olabilir.
;Bu listeyi ters çevirip(reverse) return etmemizi istiyordu. Ex: (1, (2, 3)) -> ((3, 2), 1) (10pts)
(defun reverse-nested-list (lst)
    (cond (;if
        (null lst) nil ; it the list is empty, return nil
        )
        ( ;else
            (atom lst) lst ; it the element is atom (no a list), return element itself
            ; atom type numbers, symbols, strings, characters, other non-list entities (boolean, nil, etc.)
        )
        (
            t (reverse (mapcar #'reverse-nested-list  lst)) ; reverse list
        )
    )
)
(write (reverse-nested-list '(1 (2 3))))

;2. Listedeki bir elemanın kaç kere tekrar ettiğinizi bulan bir program yazın. 
;İç içe listeler olabilir. Ex: (1, (3, 5), (3, 7, 8), 2) -> 3 occurs 2 times (10pts)
; car listenin ilk elemanını döndürür 
; cdr ise listenin ilk elemanını çıkartıp geri kalanını döndürür
(defun count_value (target lst)
    (cond
        ((null lst) 0); eğer null sa 0 döndür
        ((atom (car lst)); eğer listenin ilk elemanı list dışındaki bir şey ise
            (if (eql target (car lst)); eğer target ile listenin ilk elemanı eşitse
                (+ 1 (count_value target (cdr lst))) ; 1 + listenin geri kalanında target'ı ara
                (count_value target (cdr lst)); değilse listenin geri kalanında target'ı ara
            
            )
        )
        (t (+ (count_value target (car lst)) (count_value target (cdr lst)))) ; eğer listenin ilk elemanı list ise, her iki parçaya da bak
    )
)
(format t "~%Occurs ~d times" (count_value 3 '(1 (3 5) (3 7 8) 2)))
;3. Verilen string polindrome mudur bulan bir kod. Ex: ( 12321) (15pts)
(defun is_polindrome (str)
    (equal str (reverse str))
)
(format t "~%~a is polindrome: ~a" "12321" (is_polindrome "12321"))