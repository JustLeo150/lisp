6. Определите функцию, переводящую список чисел в список соответствующих им названий.
(defun changeNumbersToString (listNumber &optional listString )
         (cond 
          ((eq 1 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "one" listString)))
          ((eq 2 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "two" listString)))
          ((eq 3 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "three" listString)))
          ((eq 4 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "four" listString)))
          ((eq 5 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "five" listString)))
          ((eq 6 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "six" listString)))
          ((eq 7 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "seven" listString)))
          ((eq 8 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "eight" listString)))
          ((eq 9 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "nine" listString)))
          ((eq 0 (car listNumber))  (changeNumbersToString  (cdr listNumber) (cons "zero" listString)))
          (t  listString)
         )  
)

(print(changeNumbersToString '(1 2 3 4 5 0 9 8 7 6 ))) ; => ("six" "seven" "eight" "nine" "zero" "five" "four" "three" "two" "one") 

