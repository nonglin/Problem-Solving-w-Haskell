-- Defining nthPrime function to find the 10,001st prime
 
let nextPrime primes potential = if any (\prime -> mod potential prime == 0) primes then nextPrime primes (potential + 1) else potential
 
let laterPrimes primes = n : (laterPrimes (primes ++ [n])) where n = (nextPrime primes (foldl max 0 primes))
 
let primes = 2 : (laterPrimes [2])
 
let nthPrime n = head $ drop (n-1) $ take n primes
 
 
-- Examples of using the nthPrime function
 
nthPrime 100
-- Result: 541
 
nthPrime 1000
-- Result: 7919
 
nthPrime 10001
-- Result: 104743 (took 5 minutes to calculate)
 