-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

main = interact wordCount
    -- lines
    -- where wordCount input = show (length (lines input)) ++ " line(s).\n"
    -- words
    where wordCount input = show (length (words input)) ++ " word(s).\n"
    -- characters
    -- where wordCount input = show (length input) ++ " character(s).\n"
