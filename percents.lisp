(defun percents (a b) (list (+ a b 0.0) (/ a (+ a b 0.0)) (/ b (+ a b 0.0)) ) )
(defun % (a b) (list (list "a : " (* 100 (/ a (+ a b 0.0))) "b : " (* 100 (/ b (+ a b 0.0)))) (list a " + " b "=" (+ a b))))
