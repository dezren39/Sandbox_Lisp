Trying out a new language for me.

    (defun ^ (base exponent &optional (total 1))
        (loop for exponent from 1 to exponent do
            (setf total (* base total)))
        total)
    
    (def pow #(reduce *' (repeat %2 %1)))

    (defmacro powOfFirstToRest [x & y] `(map #(reduce *' (repeat ~x %)) (flatten '~y)))
