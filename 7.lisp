7. Определите функцию, удаляющую из исходного списка элементы с четными номерами.
(defun delete-evens (lst)
   ((lambda (head tail)
         (if head
                (cons head (delete-evens (cdr tail)))
         )  
   ) 
    (car lst)
    (cdr lst)
  )
)
(print (delete-evens '(1 2 3 4))) ; => 1 3
(print (delete-evens '(1 2 3 4 1 2 2 4))) ; => 1 3 1 2
