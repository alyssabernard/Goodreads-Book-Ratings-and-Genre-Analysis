CREATE OR REPLACE VIEW `cloudysanfrancisco-480317.books_portfolio.book_genres_clean` AS
SELECT
bt.goodreads_book_id,
  bt.tag_id,
  t.tag_name
FROM `cloudysanfrancisco-480317.books_portfolio.book_tags_clean` bt
JOIN `cloudysanfrancisco-480317.books_portfolio.tags_clean` t
  ON bt.tag_id = t.tag_id
WHERE
  t.tag_name IN (
    'fantasy',
    'fiction',
    'romance',
    'histroical fiction',
    'thriller',
    'non-fiction',
    'mystery',
    'science fiction',
    'young adult',
    'classics'
  );