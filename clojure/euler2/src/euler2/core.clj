(ns euler2.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))

(def fib
  (memoize
    (fn [n]
      (if (<= n 2)
        n
        (+ (fib (- n 1)) (fib (- n 2)))))))

(defn sum-of-even-terms [limit]
  (reduce + (filter (fn [a] 
    (and (even? a) (< a 4000000))) 
      (map fib (range 1 limit)))))

