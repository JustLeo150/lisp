;3. Определите лисповскую форму (IF условие p q) в виде макроса.

(defmacro My-If (condition then else)
   `(cond 
           (,condition ,then)
           (t ,else)
    )
)
 

(print(My-If (> 15 6) 'p 'q)) ; P

(print(My-If (> 6 15) 'p 'q)) ; Q
