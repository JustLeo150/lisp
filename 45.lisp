;45. Напишите функцию (РАССТОЯНИЕ a b), вычисляющую расстояние между городами а и b.
(defun Distance (a b) 
  (sqrt (+ (expt (- (get a 'x) (get b 'x)) 2)
           (expt (- (get a 'y) (get b 'y)) 2))
  )
)
 
(setf (get 'London 'x) 2270)
(setf (get 'London 'y) -445)

(setf (get 'Moscow 'x) 125)
(setf (get 'Moscow 'y) 125)
 
(setf (get 'Krasnodar 'x) 300)
(setf (get 'Krasnodar 'y) 150)

(print(distance 'Moscow 'Krasnodar)) ; => 176.7767 
(print(distance 'Moscow 'London)) ; => 2219.4424 
(print(distance 'Krasnodar 'London)) ; => 2057.8933
