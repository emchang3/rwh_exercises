-- 1. Write a function that computes the number of elements in a list. To test it, ensure that it gives the same answers as the standard length function.

-- 2. Add a type signature for your function to your source file. To test it, load the source file into ghci again.

myLength :: [a] -> Integer

myLength [] = 0
myLength x = 1 + myLength (init x)

-- 3. Write a function that computes the mean of a list, i.e. the sum of all elements in the list divided by its length. (You may need to use the fromIntegral function to convert the length of the list from an integer into a floating point number.)

computeMean :: [Float] -> Float

computeMean [] = 0
computeMean x =
    let sumUp [] = 0
        sumUp y = head y + sumUp (tail y)
    in  sumUp x / fromIntegral (length x)

-- 4. Turn a list into a palindrome, i.e. it should read the same both backwards and forwards. For example, given the list [1,2,3], your function should return [1,2,3,3,2,1].

palindrome :: [a] -> [a]

palindrome [] = []
palindrome x = x ++ reverse x

-- 5. Write a function that determines whether its input list is a palindrome.

isPalindrome :: Eq a => [a] -> Bool

isPalindrome [] = True
isPalindrome x = x == reverse x

-- 6. Create a function that sorts a list of lists based on the length of each sublist. (You may want to look at the sortBy function from the Data.List module.)

-- 7. Define a function that joins a list of lists together using a separator value.

-- 8. Using the binary tree type that we defined earlier in this chapter, write a function that will determine the height of the tree. The height is the largest number of hops from the root to an Empty. For example, the tree Empty has height zero; Node "x" Empty Empty has height one; Node "x" Empty (Node "y" Empty Empty) has height two; and so on.

-- 9. Consider three two-dimensional points a, b, and c. If we look at the angle formed by the line segment from a to b and the line segment from b to c, it either turns left, turns right, or forms a straight line. Define a Direction data type that lets you represent these possibilities.

-- 10. Write a function that calculates the turn made by three 2D points and returns a Direction.

-- 11. Define a function that takes a list of 2D points and computes the direction of each successive triple. Given a list of points [a,b,c,d,e], it should begin by computing the turn made by [a,b,c], then the turn made by [b,c,d], then [c,d,e]. Your function should return a list of Direction.

-- 12. Using the code from the preceding three exercises, implement Graham's scan algorithm for the convex hull of a set of 2D points. You can find good description of what a convex hull. is, and how the Graham scan algorithm should work, on Wikipedia.
