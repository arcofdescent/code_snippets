(ns get-links.core
  (:gen-class))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))

(defn get-links []
  (let [html-str (slurp "http://clojuredocs.org")]
    (re-matches #"<a .+/>" html-str)))
