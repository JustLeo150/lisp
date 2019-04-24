; 9) Опредлить генератор фибоначи

(defun fib ()
	(let
		((prev 0) (cur 1) (temp 0))
		(lambda () (and
			(setq temp cur)
			(setq cur (+ prev cur))
			(setq prev temp)
			temp
		))
	)
)

(setq gen1 (fib))
(setq gen2 (fib))

(print (funcall gen1)) ; 0
(print (funcall gen1)) ; 1
(print (funcall gen1)) ; 1
(print (funcall gen1)) ; 2
(print (funcall gen1)) ; 3
(print (funcall gen1)) ; 5
(print (funcall gen1)) ; 8

(print (funcall gen2)) ; 1
(print (funcall gen2)) ; 1
(print (funcall gen2)) ; 2
(print (funcall gen2)) ; 3
