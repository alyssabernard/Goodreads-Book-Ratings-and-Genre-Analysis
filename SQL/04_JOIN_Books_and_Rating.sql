SELECT
  b.title,
  ROUND(AVG(r.rating), 2) AS avg_user_rating,
  COUNT(r.rating) AS total_ratings
FROM `cloudysanfrancisco-480317.books_portfolio.books_clean` b
JOIN `cloudysanfrancisco-480317.books_portfolio.ratings_clean` r
  ON b.book_id = r.book_id
GROUP BY 
  b.title
HAVING COUNT(r.rating) >= 100
ORDER BY avg_user_rating DESC
LIMIT 10;
