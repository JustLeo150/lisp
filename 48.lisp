;48.Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), который проверяет, обладает ли символ данным свойством.
(defun HasProperty(x property)
  (FindProperty property (symbol-plist x))
)

(defun FindProperty(property list)
    (cond
       ((null list) nil)
       ((equal property (car list)) T)
       (t (FindProperty property (cddr list)))
    )
)

(defun setProperty (Sym Prop value) 
    (setf (get Sym Prop) value)
)

(setProperty 'Symbol 'first 300)
(setProperty 'Symbol 'second nil)

(print(HasProperty 'Symbol 'first)) ; => T
(print(HasProperty 'Symbol 'second)) ; => T
(print(HasProperty 'Symbol 'third)) ; => NIL
