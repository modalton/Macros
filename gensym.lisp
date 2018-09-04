
(defmacro bad-for ((var start stop) &body body)
  "Limit is necessary to prevent mulitple evalutation"
  `(do ((,var ,start (1+ ,var))
        (limit ,stop))
       ((> ,var limit))
     ,@body))



(defmacro for ((var start stop) &body body)
  (let ((limit (gensym)))
    `(do ((,var ,start (1+ ,var))
         (,limit ,stop))
        ((> ,var ,limit))
      ,@body)))



(defun run ()
  "Do macroexpands correctly and doesn't capture. Book doesn't specify how it's vulnerable inside that do although you can see clearly free variable."
  (let ((limit 7))
    (bad-for (x 0 10)
      (print x))
    (for (x 0 10)
      (print x))
    (print limit)))
