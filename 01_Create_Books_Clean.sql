CREATE OR REPLACE VIEW `cloudysanfrancisco-480317.books_portfolio.books_clean` AS
SELECT 
book_id,
  title,
  authors,
  original_publication_year,
  language_code,
  average_rating,
  ratings_count,
  books_count
FROM `cloudysanfrancisco-480317.books_portfolio.books_raw`
WHERE
  average_rating IS NOT NULL;