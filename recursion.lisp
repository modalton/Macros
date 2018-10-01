(defmacro my-or (&rest args)
  (if (null args)
      nil
      `(if ,(car args)
           ,(car args)
           (my-or ,@(cdr args))
           )))

(defmacro my-gensym-or (&rest args)
  (if (null args)
      nil
      (let ((x (gensym)))
        `(let ((,x ,(car args)))
           (if ,x
               ,x
               (my-or ,@(cdr args))
               )))))

