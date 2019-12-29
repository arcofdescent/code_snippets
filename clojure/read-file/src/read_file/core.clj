(ns read-file.core
  (:gen-class))

;; Output should be a seq of maps.
;; Each map should be like,
;;
;; { :name "Emp Name"
;;   :department "Sales"
;;   :score 5
;; }
;;

(require '[clojure.string :as str])
(use 'clojure.pprint)

(defn get-lines []
  (clojure.string/split-lines (slurp "scores.csv")))

(defn get-parts [s]
  (let [items (str/split s #",")]
    items))

(defn make-keyword [s]
  (keyword (str/lower-case s)))

(defn create-map [emp]

  ;; crazy hardcoding, learning here!
  (apply hash-map [
                   (make-keyword "Name")
                   (emp 0)
                   (make-keyword "Department")
                   (emp 1)
                   (make-keyword "Score")
                   (emp 2)
                   ]))

(defn get-employee-list []
    (loop [xs (get-lines)
        result []]

    (if-not xs
        result

        (let [x (first xs)]

        (recur (next xs)
                (conj result (get-parts x)))))))


(defn get-employees-info []
    (loop [xs (get-employee-list)
        result []]

    (if-not xs
        result

        (let [x (first xs)]

        (recur (next xs)
                (conj result (create-map x)))))))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (pprint (get-employees-info)))
