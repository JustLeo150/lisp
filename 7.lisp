7. Определите функцию, удаляющую из исходного списка элементы с четными номерами.
(defun divide (lst)
   ((lambda (head tail)
         (if head
                (cons head (divide (cdr tail)))
         )  
   ) 
    (car lst)
    (cdr lst)
  )
)
(print (divide '(1 2 3 4))) ; => 1 3
(print (divide '(1 2 3 4 1 2 2 4))) ; => 1 3 1 2
