-- mappend (\a -> [a, (a * 2)]) [1,2,3] -> [1,2,2,4,3,6]
let mappend f xs = foldl (++) [] $ map f xs
 
-- cartesianProductWith (*) [1,2] [3,5] -> [3,5,6,10]
let cartesianProductWith f xs ys = mappend (\x -> map (f x) ys) xs
 
-- cartesianProduct [1,2] [3,4] -> [(1,3),(1,4),(2,3),(2,4)]
let cartesianProduct = cartesianProductWith (\a -> \b -> (a,b))
 
-- 12021 -> True
let palindrome n = show n == reverse (show n)
 
palindrome 9009
 
  True
 
palindrome 900
 
  False
 
let factors = [100..999]
 
let products = cartesianProductWith (*) factors factors
 
let palindromes = filter palindrome products
 
let biggestPalindrome = foldl max 0 palindromes
 
biggestPalindrome -- took 10 seconds to calculate
 
  906609
 
 