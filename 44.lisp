;42. Определите функцию, находящую максимальное из значений, находящихся в вершинах дерева.
(defun max2 (el1 el2)
    (cond
        ((null el1) el2)
        ((null el2) el1)
        ((> el1 el2) el1)
        (T el2)
    )
)
(defun max-all (arr)
    (print arr)
    (cond 
        ((null arr) nil)
        (T (max2 (car arr) (max-all (cdr arr) )))
    )
)

( defun max-in-tree (arr)
    (cond
        ((null arr) nil)
        ((null (cdr arr)) (car arr))
        (T  
            (max-all 
                (list
                    (car arr) 
                    (max-in-tree (cadr arr)) 
                    (max-in-tree (caddr arr))
                )
            )
        )
    )
)

(print(max-in-tree '(3 (18 (1 nil nil) (7 nil nil)) (4 nil (15 nil nil))))) ; => 18
(print(max-in-tree '(3 (5 (1 nil nil) (7 nil nil)) (4 nil (25 nil nil))))) ; => 25
