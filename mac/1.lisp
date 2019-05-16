; 1. Определите макрос, который возвращает свой вызов

(defmacro mac (x)
  `'(mac ,x)
)

(print(mac a)) ; (mac a)
