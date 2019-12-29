(ns smack-that-hobbit.core
  (:gen-class))

(require '[clojure.string :as str])
;; (use 'clojure/pprint)

(def asym-hobbit-parts [
                        {:name "head" :size 3}
                        {:name "left-eye" :size 1}
                        {:name "left-ear" :size 1}
                        {:name "mouth" :size 1}
                        {:name "nose" :size 1}
                        {:name "neck" :size 2}
                        {:name "left-shoulder" :size 3}
                        {:name "left-upper-arm" :size 3}
                        {:name "chest" :size 10}
                        {:name "back" :size 10}
                        {:name "left-forearm" :size 3}
                        {:name "abdomen" :size 6}
                        {:name "left-kidney" :size 1}
                        {:name "left-hand" :size 2}
                        {:name "left-knee" :size 2}
                        {:name "left-thigh" :size 4}
                        {:name "left-lower-leg" :size 3}
                        {:name "left-achilles" :size 1}
                        {:name "left-foot" :size 2}])

(defn matching-part
  [p]
  {:name (str/replace (:name p) #"^left-" "right-")
    :size (:size p)})

(defn symmetrize-hobbit-parts
  "Return symmetrical hobbit parts"
  []
  (loop [parts asym-hobbit-parts
         result []]

    (if (empty? parts)
      result

      (let [part (first parts)]

        (recur (next parts)
               (into result
                     (set [part (matching-part part)])))))))


(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println (symmetrize-hobbit-parts)))
