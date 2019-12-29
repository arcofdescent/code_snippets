(ns loln.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))

(def counter (atom 0))

(defn flip-coins [n]
  (dotimes [i n] 
    (let [result (rand-int 2)]
      (if (= result 0) 
        (swap! counter inc))))
        
  (prn (str "Number of flips: " n))
  (prn (str "Number of times we got heads: " @counter)))
