25. Определите функцию, удаляющую из списка каждый четный элемент.
(defun divide (list)
    ((lambda (head tail) 
          (cond 
              ((null tail) list)
              ((evenp head) (divide tail))
              (t (cons head (divide tail)))
          )
     )
     (car list)
     (cdr list)
    )
)
(print( divide '(1 2 3 4 5 9 8 7 6 ))) => (1 3 5 9 7 6) 
             
             
