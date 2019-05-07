; 2) Определить макрос pop-stack

(defmacro pop-stack (stack)
	`(let ((first))
		(setq first (car ,stack))
		(setq ,stack (cdr ,stack))
		first
	)
)

(setq stack `(1 2 3))

(print (pop-stack stack)) ; 1
(print (pop-stack stack)) ; 2
(print (pop-stack stack)) ; 3

