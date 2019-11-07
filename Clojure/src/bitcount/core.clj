(ns bitcount.core
  (:gen-class))

(defn- bit-shifted-array
  [input]
  (map
    (fn [i]
      (if (= i 0)
        input
        (int (Math/floor (/ input (* 2 i))))))
    (range 32)))

(defn- bitcount
  [input]
  (reduce
    +
    (map
      #(if (= (mod % 2) 0) 0 1)
      (bit-shifted-array input))))

(defn -main
  [& args]
  (println (bitcount (Integer/parseInt (first args)))))

