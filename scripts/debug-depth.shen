(do (cd "test/shen")
    (load "search.shen")
    (tc +)
    (load "depth.shen")
    (print (trap-error
             (depth 4 (/. X [(+ X 3) (+ X 4) (+ X 5)]) (/. X (= X 27)) (/. X (> X 27)))
             (/. E E))))
