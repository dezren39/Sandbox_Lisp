lists single items until item is below 0

(defun lister (list) (loop
      (when (>= 0 (car list)) (return "Done"))
      (print (car list)) (setf list (cdr list))))
      
      (lister (loop for x from 20 to 100 for y = (- 97 (* 1.45 x)) collect y))
      
      
      lists 2 item lists until 1 item below equal 0
      (defun lister1 (list) (loop (when (>= 0 (car (car list))) (return "Done"))(print (car list)) (setf list (cdr list))))
      
      
      same thing but scond item? hard time this way
      (defun lister1 (list) (loop (when (> 0 (car (cdr (car list)))) (return "Done"))(print (car list)) (setf list (cdr list))))
      
      loops and collects a list with the x and y
      (lister1 (loop for x from 20 to 100 for y = (list x (- 97 (* 1.45 x))) collect y))))
