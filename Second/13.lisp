; 13.Определите функцию, которая возвращает в качестве значения свое определение (лямбда-выражение)
(defun return-lambda nil
    ((lambda (x) x)
        '(lambda (x) x))
)


(print(return-lambda)) ; (LAMBDA (X) X) 
