<i>2. Определите функцию, возвращающую последни q элемент списка.</i>
(defun mylist (lst)
   ((lambda (head tail)
           (cond ((null tail) head)
           (t  (mylist tail)))     
    )
    (car lst)
    (cdr lst)
   )
)
(mylist '(1 2 3 4))
=> 4
(mylist '(1 2 3))
=> 3
