48. Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который проверяет, обладает ли символ данным свойством.

(defun HasProperty(x property)
  (FindProperty property (symbol-plist x))
)

(defun FindProperty(property list)
    (cond
       ((null list) nil)
       ((equal prop (car list)) T)
       (t (FindProperty prop (cddr list)))
    )
)
(print(HasProperty 'Symbol 'first)) ; => T
(print(HasProperty 'Symbol 'second)) ; => T
(print(HasProperty 'Symbol 'rhird)) ; => NIL
