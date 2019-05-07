; 1. Определите макрос, который возвращает свой вызов

(defmacro mac (x)
  `(quote (mac ,x))
)

(print(mac a))
