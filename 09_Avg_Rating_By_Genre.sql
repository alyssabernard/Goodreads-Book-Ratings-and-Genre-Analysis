SELECT 
  g.tag_name,
  ROUND(AVG(b.average_rating), 2) AS avg_book_rating,
  COUNT(DISTINCT b.book_id) AS total_books
 FROM `cloudysanfrancisco-480317.books_portfolio.book_genres_clean` g
 JOIN `cloudysanfrancisco-480317.books_portfolio.books_clean` b
  ON g.goodreads_book_id = b.book_id
GROUP BY g.tag_name
HAVING COUNT(DISTINCT b.book_id) >= 100
ORDER BY avg_book_rating DESC;