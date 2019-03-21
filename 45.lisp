;45. Напишите функцию (РАССТОЯНИЕ a b), вычисляющую расстояние между городами а и b.
(defun Distance (FromCity ToCity) 
  (sqrt (+ (expt (- (get FromCity 'x) (get ToCity 'x)) 2)
           (expt (- (get FromCity 'y) (get ToCity 'y)) 2))
  )
)

(defun setCity(Sym &key x y ) 
    (setf (get Sym 'x) x)
    (setf (get Sym 'y) y)
  
)

(setCity 'London :x 2270 :y -445)
(setCity 'Moscow :x 125 :y -125)
(setCity 'Krasnodar :x 300 :y 300)



(print(distance 'Moscow 'Krasnodar)) ; => 176.7767 
(print(distance 'Moscow 'London)) ; => 2219.4424 
(print(distance 'Krasnodar 'London)) ; => 2057.8933
