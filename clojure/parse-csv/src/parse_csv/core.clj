(ns parse-csv.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))

(def file "scores.csv")

(defn list-of-vecs []
  (let [file-str (slurp file)]
    (let [lines (clojure.string/split-lines file-str)]
      (next (map #(clojure.string/split % #",") lines)))))

(defn list-of-maps []
    (map (fn [n] {:name (n 0), :department (n 1), :score (Integer/parseInt (n 2))})
        (list-of-vecs)))

(defn sorted-list []
  (reverse (sort-by :score (list-of-maps))))

(defn print-high-scores []
  (prn "Name","Department","Score")
  (map (fn [m] (prn (m :name) (m :department) (m :score))) (sorted-list)))

