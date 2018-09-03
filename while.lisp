;;; My initial stab at while. Seems to macroexpand-1 fine but don't know how to recusivley
;;;  step through macro expansions
;; (defmacro while (condition &body body)
;;   `(if (not ,condition)
;;        (progn
;;          (,@body)
;;          (while condition body))))

(defmacro while (condition &body body)
  `(do ()
       ((not ,condition))
     ,@body))
