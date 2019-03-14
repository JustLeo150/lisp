(defun divide (lst)
   ((lambda(head tail)
     (if head
            (cons head
            (divide (cdr tail))))  
    ) 
    (car lst)
    (cdr lst)
  )
)
(print (divide '(1 2 3 4)))
(print (divide '(1 2 3 4 1 2 2 4)))
