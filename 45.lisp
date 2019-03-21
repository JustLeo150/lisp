;45. Напишите функцию (РАССТОЯНИЕ a b), вычисляющую расстояние между городами а и b.
(defun Distance (FromCity ToCity) 
  (sqrt (+ (expt (- (get FromCity 'x) (get ToCity 'x)) 2)
           (expt (- (get FromCity 'y) (get ToCity 'y)) 2))
  )
)

(defun setProperty (Sym Prop value) 
    (setf (get Sym Prop) value)
  
)
 
(setProperty 'London 'x 2270)
(setProperty 'London 'y -445)

(setProperty 'Moscow 'x 125)
(setProperty 'Moscow 'y -125)

(setProperty 'Krasnodar 'x 300)
(setProperty 'Krasnodar 'y -150)


(print(distance 'Moscow 'Krasnodar)) ; => 176.7767 
(print(distance 'Moscow 'London)) ; => 2219.4424 
(print(distance 'Krasnodar 'London)) ; => 2057.8933
