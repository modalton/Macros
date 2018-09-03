(defmacro our-dolist ((var list &optional result) &body body)
  "bit to lazy to test this one"
  `(progn
     (mapc #'(lambda (,var) (,@body)) ,list)
     (let ((,var nil)) ,result)
     ))
