(defun z (in mean samp) (/ (- in mean) (std mean samp)))
(defun std (value sample) (sqrt (/ (* value (- 1 value)) sample)))
