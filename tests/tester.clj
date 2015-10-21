(defn range-10-times-2
  []
  (reduce #(+ %1 %2)
  (map (fn [x]
         (* x 2))
       (range 10))))
