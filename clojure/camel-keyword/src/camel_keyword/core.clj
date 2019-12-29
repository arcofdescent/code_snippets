(ns camel-keyword.core
  (:gen-class))

(require '[clojure.string :as str])

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))

(defn camel->keyword [s]
  (keyword (str/lower-case (str/replace s #"([a-z])([A-Z])" "$1-$2"))))

(def users { "FirstName" "Rohan",
             "LastName"  "Almeida",
             "FatherFirstName" "Michael"})

(defn user-map [u]
  (into {} (map (fn [[k v]] [(camel->keyword k) v]) u)))

