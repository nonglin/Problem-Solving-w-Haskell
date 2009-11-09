import Data.Maybe
import Data.List
 
let pythagorean (x,y) = if x^2 + y^2 == z^2 then Just (x,y,z) else Nothing where z = round $ sqrt $ fromIntegral $ x^2 + y^2
 
let positivePairs = (1,1) : map (\(x,y) -> if y < x then (x,y+1) else (x+1,1)) positivePairs
 
let pythagoreans = catMaybes $ map pythagorean positivePairs
 
find (\(x,y,z) -> x + y + z == 1000) pythagoreans
 
   Just (375,200,425)
 
375*200*425
 
   31875000
 