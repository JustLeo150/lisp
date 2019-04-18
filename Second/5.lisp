;Определите функциональный предикат (НЕКОТОРЫй пред список), который ис-
;тинен, когда, являющейся функциональным аргументом предикат пред исти-
;нен хотя бы для одного элемента списка список.

(defun somme (pred list-numbers) 
     (mapcan #'(lambda (number)
            (cond
                ((not (funcall pred number)) NIL)
                (t (list t))
            )
           ) list-numbers)
    
)

(defun del-duplicates (l)
    (cond
        ((null l) nil)
        ((member (car l) (cdr l)) (del-duplicates (cdr l)))
        (t (cons (car l) (del-duplicates (cdr l))))))
 

(print(del-duplicates(somme 'evenp '(1 2 2 3 3 3 3 3 ))))
