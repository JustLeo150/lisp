;1. ОпределитеFUNCALLчерез функционал APPLY

(defun fcall (fn &rest arr)
    (apply fn arr)
)


(print(fcall '+ 1 2 3)) ; => 6
(print(fcall '* 1 2 3 4)) ; => 24

