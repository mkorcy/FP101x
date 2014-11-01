-- |n = a `div` length xs
-- |  where a = 10
-- |        xs = [1,2,3,4,5]


-- | bad indentation
-- |n = a `div` length xs
-- |where 
-- |    a = 10
-- |    xs = [1,2,3,4,5]


-- | bad N
-- |N = a `div` length xs
-- |  where a = 10
-- |        xs = [1,2,3,4,5]


-- | good last xs = drop (length xs -1) xs
-- | good last  xs = head ( drop (length xs - 1) xs)
-- |last xs = tail (reverse xs)
-- |last xs = reverse (head xs)
-- | goodlast xs = xs !! (length xs  -1)
-- |last xs = head (drop (length xs) xs)
-- |last xs = head (reverse xs)
-- |last xs = reverse xs !! (length xs -1)

-- | exercise 3
-- |init xs = tail (reverse xs)
-- |init xs = reverse (head (reverse xs))
-- |init xs = reverse (tail xs)
-- |init xs = take (length xs) xs
-- | correct -- init xs = reverse (tail (reverse xs))
-- |init xs = take (length xs - 1)(tail xs)
-- |init xs = drop (length xs - 1) xs

-- |double x = x * 2

-- |product2 [] = 1
-- |product2 (x : xs) = x * product xs

qsort [] = []
qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
  where smaller = [a | a <- xs, a < x]
        larger = [b | b <- xs, b > x]

-- |qsort [] = []
-- |qsort (x : xs) = reverse (qsort smaller ++ [x] ++ qsort larger)
-- |  where smaller = [a | a <- xs, a <= x]
-- |        larger = [b | b <- xs, b > x]

-- |qsort [] = []
-- |qsort (x : xs) = qsort larger ++ qsort smaller ++ [x]
-- |  where smaller = [a | a <- xs, a <= x]
-- |        larger = [b | b <- xs, b > x]

-- |qsort [] = []
-- |qsort (x : xs) 
-- |  = reverse (qsort smaller) ++ [x] ++ reverse (qsort larger)
-- |  where smaller = [a | a <- xs, a <= x]
-- |        larger = [b | b <- xs, b > x]

-- |qsort [] = []
-- |qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
-- |  where larger = [a | a <- xs, a > x || a == x]
-- |        smaller = [b | b <- xs, b < x ] 

-- |qsort [] = []
-- |qsort (x : xs) = qsort larger ++ [x] ++ qsort smaller
-- |  where smaller = [a | a <- xs, a < x]
-- |        larger = [b | b <- xs, b > x]

-- |qsort [] = []
-- |qsort (x : xs)
-- |  = reverse
-- |    (reverse (qsort smaller) ++ [x] ++ reverse (qsort larger))
-- |  where smaller = [a | a <- xs, a < x]
-- |        larger = [b | b <- xs, b > x]

-- |qsort [] = []
-- |qsort xs = x : qsort larger ++ qsort smaller
-- |  where x = maximum xs
-- |        smaller = [a | a <- xs, a < x]
-- |        larger = [b | b <- xs, b >= x]