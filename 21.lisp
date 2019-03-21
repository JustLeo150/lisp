;21. Определите функцию, удаляющую из списка первое вхождение данного элемента на верхнем уровне.
(defun Del (mainList forDelete)
   ((lambda (head tail) 
      (cond 
         ((null mainList) nil)
         ((equal head forDelete) tail)
         (t (cons head (Del tail forDelete)))
      )
    )
    (car mainList)
    (cdr mainList)
   )
)
(print( Del '((1 2 3) 4 5 (1 2 3) 6)  '(1 2 3))) ; ==> (4 5 (1 2 3) 6)
(print( Del '((1 2 ) 4 5 (1 2 3) 6)  '(1 2 3))) ; ==> ((1 2) 4 5 6) 


