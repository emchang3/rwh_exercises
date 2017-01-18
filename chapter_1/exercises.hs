-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

-- main = interact wordCount
--     where wordCount input = show (length (lines input)) ++ "\n"

-- 3. The words function counts the number of words in a string. Modify the WC.hs example to count the number of words in a file.

-- 4. Modify the WC.hs example again, to print the number of characters in a file.

main = interact wordCount
    -- lines
    -- where wordCount input = show (length (lines input)) ++ " line(s).\n"
    -- words
    where wordCount input = show (length (words input)) ++ " word(s).\n"
    -- characters
    -- where wordCount input = show (length input) ++ " character(s).\n"
