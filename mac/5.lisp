;5. Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.
(defmacro repeat (body condition)
    `(cond(,condition nil)
          (t(and(print ,body)(repeat ,body ,condition)))
     ) 
)

(setq i 10)
(repeat (setq  i (- i 1)) (equal i 0))


;9 
;8 
;7 
;6 
;5 
;4 
;3 
;2 
;1 
;0

(print (MACROEXPAND `(repeat (setq  i (- i 1)) (equal i 0))))
;(IF (EQUAL I 0) NIL
;(AND (PRINT (SETQ I (- I 1))) (REPEAT (SETQ I (- I 1)) (EQUAL I 0)))) 
