(ns leap)

(defn leap-year? [year] ;; <- argslist goes here
  ;; your code goes here
  (if (= (mod year 400) 0) true (and (= (mod year 4) 0) (not= (mod year 100) 0)))
)
