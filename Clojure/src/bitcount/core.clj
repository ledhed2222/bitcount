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

(defn- parse-input
  [input]
  (try
    [(Integer/parseInt input) :ok]
    (catch NumberFormatException e
      [(str input " is not a number!") :error])))

(defn -main
  [& args]
  (let [[parsed-input success] (parse-input (first args))]
    (if (= success :ok)
      (println (bitcount parsed-input))
      (do
        (println parsed-input)
        (System/exit 1)))))

