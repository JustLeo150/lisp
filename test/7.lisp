;7. Написать программу для нахождения минимального из чисел, являющихся максимальными в каждой из строк заданной прямоугольной матрицы. 
(defun max-in-list (Numbers)
    (cond
        ((null numbers) nil)
        (t(apply 'max Numbers))
    )
)

(defun min-in-list (Numbers)
    (cond
        ((null numbers) nil)
        (t(apply 'min Numbers))
    )
)
(defun min-in-max(Numbers)
    (min-in-list(mapcar 'max-in-list matrix))
)



(setq row1 '(1 5 9))
(setq row2 '(7 4 3))
(setq row3 '(11 9 7))
(setq matrix (list row1 row2 row3))

(print (min-in-max matrix)) ; 7
