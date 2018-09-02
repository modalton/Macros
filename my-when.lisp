(defmacro my-when (condition &body body)
  "in lieu of &rest, &body gives smart editors and code formatters a hint about how to
indent the code."
  `(if ,condition
       (progn ,@body)))
