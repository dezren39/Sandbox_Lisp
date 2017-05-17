(def sum #(reduce +' (flatten %&)))
(def pow #(reduce *' (repeat %2 %1)))

(def initMinMax #(loop [high 0] (if (< (pow high 2) %1) (recur (inc high)) (list (- high 1) high))))
(def sumThenDivBy2 #(/ (reduce +' (flatten %&)) 2.0))
(defn sqrt 
  ([base] (sqrt base 0.01 (initMinMax base)))
  ([base precision] (sqrt base precision (initMinMax base)))
  ([base precision minMax]
  (let [half (sumThenDivBy2 minMax)
        halfPow (pow half 2)
        low (first minMax)
        high (second minMax)]
    (if (= (pow high 2) base)
        high
      (if (< precision (- (max base halfPow) (min base halfPow)))
          (if (>= halfPow base)
              (sqrt base precision (list low half))
            (sqrt base precision (list half high)))
        half)))))
(sqrt 2)

(defmacro addFirstToRest [x & y] `(map #(+ ~x %) (flatten '~y)))
(defmacro powOfFirstToRest [x & y] `(map #(reduce *' (repeat ~x %)) (flatten '~y)))
(eval `(addFirstToRest 1 ~(powOfFirstToRest 2 4 5 6)))

What a fun language.
