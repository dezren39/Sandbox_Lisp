

;;Prints a list one line at a time 
(defun lister (list) (loop
     (when (>= 0 (car list)) (return "Done"))
     (print (car list)) (setf list (cdr list))))
;Example with algorithm from stats.      
(lister (loop for x from 20 to 100 for y = (- 97 (* 1.45 x)) collect y))

;Prints multi-item lists until first item in first list is below equal 0
(defun lister1 (list) (loop
      (when (>= 0 (car (car list))) (return "Done"))
      (print (car list)) (setf list (cdr list))))

;Same thing but second item? Had a hard time this way, thought I'd find a better way than car/cdr/car, but eh.
(defun lister2 (list) (loop (when (> 0 (car (cdr (car list)))) (return "Done"))(print (car list)) (setf list (cdr list))))

;Example prints lists with the x and y for each x from 20 to 100. (same stats algo, age/insuranceCost)
(lister2 (loop for x from 20 to 100 for y = (list x (- 97 (* 1.45 x))) collect y))))

;CLISP prints this error:
;     *** - READ from #<INPUT CONCATENATED-STREAM #<INPUT STRING-INPUT-STREAM> #<IO TERMINAL-STREAM>>: an object cannot
;     start with #\)
;     The following restarts are available:
;     ABORT          :R1      Abort main loop
;Even though it's successful. Look into later.
(defun lister2 (list)
  (loop
   (when (eq () (cadr (car list)))
     (return "Done"))
   (when (> 0 (cadr (car list)))
     (return "Done"))
   (print (car list))
   (setf list (cdr list))))
;^^^ New version that uses cadr, catches for nil, and has new lines at all.
