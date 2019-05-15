:4 fif

(defmacro FIF (condition negative zero positive)
    `(let ((con ,condition) (neg ,negative) (zer ,zero) (pos ,positive))
          (cond ((zerop con) zer)
                ((minusp con) neg)
                (t pos)
          )
     )
)



(print(FIF (* -3 5) 'less 'equal 'more)) ;LESS 

(print(FIF (- 5 3) 'less 'equal 'more)) ;MORE 


 

 
