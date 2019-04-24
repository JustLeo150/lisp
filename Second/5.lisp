;Определите функциональный предикат (НЕКОТОРЫй пред список), который ис-
;тинен, когда, являющейся функциональным аргументом предикат пред исти-
;нен хотя бы для одного элемента списка список.

(defun somme (pred list-numbers) 
     (not
       (null
         (mapcan #'(lambda (number)
            (cond
                ( (funcall pred number) (list T))
                (t NIL)
            )
           ) list-numbers)
    ))
)



(print(somme 'evenp '(1 2 2 ))) ; T 

(print(somme 'evenp '(1 3 5 ))) ; NIL 

(print(somme 'evenp '(2 1 1 ))) ; T 
