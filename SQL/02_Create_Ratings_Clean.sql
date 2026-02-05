CREATE OR REPLACE VIEW `cloudysanfrancisco-480317.books_portfolio.ratings_clean` AS
SELECT 
  book_id,
  user_id,
  rating
FROM `cloudysanfrancisco-480317.books_portfolio.ratings_raw`
WHERE
  rating IS NOT NULL;
