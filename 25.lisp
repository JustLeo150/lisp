;25. Определите функцию, удаляющую из списка каждый четный элемент.
(defun delete-evens (list)
    ((lambda (head tail) 
          (cond 
              ((null tail) list)
              ((evenp head) (delete-evens tail))
              (t (cons head (delete-evens tail)))
          )
     )
     (car list)
     (cdr list)
    )
)
(print( delete-evens '(1 2 3 4 5 9 8 7 6 ))) => (1 3 5 9 7 6) 
             
             
