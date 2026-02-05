CREATE OR REPLACE VIEW `cloudysanfrancisco-480317.books_portfolio.book_tags_clean` AS
SELECT
  goodreads_book_id,
  tag_id,
  SAFE_CAST(COUNT AS INT64) AS tag_count
FROM `cloudysanfrancisco-480317.books_portfolio.book_tags_raw`
WHERE count IS NOT NULL;