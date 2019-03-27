(defun maxi (tree &optional (y 0))

  (if (null tree) 0)
     ((< y (car tree)) (setq y (car tree)))
        (t  (maxi (cadr tree)) (maxi (caddr tree)))))
 

 
(print(maxi'(3 (5 (1 nil nil) (7 nil nil)) (4 nil (10 nil nil)))))
 

 
