CREATE OR REPLACE VIEW `cloudysanfrancisco-480317.books_portfolio.tags_clean` AS
SELECT
  tag_id,
  LOWER(TRIM(tag_name)) AS tag_name
FROM `cloudysanfrancisco-480317.books_portfolio.tags_raw`
WHERE tag_name IS NOT NULL;