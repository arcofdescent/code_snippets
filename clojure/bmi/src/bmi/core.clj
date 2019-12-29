(ns bmi.core
  (:gen-class))

(defn inches-to-meters [inches]
  (/ (* 2.54 inches) 100))

(defn calc-bmi [weight height]
  (/ weight (* height height)))

(defn -main
  [& args]
  (let [height (inches-to-meters 66)
        weight 60]
       (calc-bmi weight (int height))))
