SELECT
  rating,
  count(*) AS count
FROM `cloudysanfrancisco-480317.books_portfolio.ratings_clean` 
GROUP BY rating
ORDER BY rating;
