;25. Определите функцию, удаляющую из списка каждый четный элемент.
(defun deleteOdds (list)
    ((lambda (head tail) 
          (cond 
              ((null tail) list)
              ((evenp head) (deleteOdds tail))
              (t (cons head (deleteOdds tail)))
          )
     )
     (car list)
     (cdr list)
    )
)
(print( deleteOdds '(1 2 3 4 5 9 8 7 6 ))) => (1 3 5 9 7 6) 
             
             
