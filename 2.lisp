;2. Определите функцию, возвращающую последни q элемент списка.</i>
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

