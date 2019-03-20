Определите функцию ПЕРВЫЙ-АТОМ, результатом которой будет первый атом списка
(defun first-atom (lst)
   ((lambda (head tail)
         (cond ((atom head)   head)
          (t  (first-atom head))
         )  
    ) 
    (car lst)
    (cdr lst)
   )

)
(print (first-atom  '(((a b)) c d))) ; => A
(print (first-atom  '((((d) a (c) b)) c d))) ; => D
