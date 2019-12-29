
(defvar *db* nil)

(defun make-cd (title artist rating)
  (list :title title :artist artist :rating rating))

(defun add-to-db (cd) (push cd *db*))

;; (add-to-db (make-cd "Reload" "Metallica" 6))
;; (add-to-db (make-cd "Awake" "Dream Theater" 7))

(defun print-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

(defun prompt-user (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd ()
  (add-to-db (make-cd (prompt-user "Title")
		      (prompt-user "Artist")
		      (or (parse-integer (prompt-user "Rating") :junk-allowed t) 0))))

(defun add-cds ()
  (loop (prompt-for-cd)
     (if (not (y-or-n-p "Continue? ")) (return))))

(defun save-db (filename)
  (with-open-file 
      (out filename
	   :direction :output
	   :if-exists :supersede)
    (with-standard-io-syntax)
    (print *db* out)))

(defun load-db (filename)
  (with-open-file 
      (in filename)
    (with-standard-io-syntax)
    (setf *db* (read in))))

