;2. Определите функцию, возвращающую последний элемент списка
(defun mylist (lst)
   ((lambda (head tail)
           (cond ((null tail) head)
           (t  (mylist tail)))     
    )
    (car lst)
    (cdr lst)
   )
)

(print (mylist '(1 2 3 4))) ; => 4
(print (mylist '(1 2 3))) ; => 3

