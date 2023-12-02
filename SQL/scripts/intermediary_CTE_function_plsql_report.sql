CREATE OR REPLACE FUNCTION getRecordsFromDate(date DATE) 
RETURNS INTEGER AS $$
DECLARE counter INTEGER;
BEGIN
  SELECT COUNT(*) INTO counter
  FROM posts 
  WHERE DATE(posts.created_at) <= date;
  
  RETURN counter;
END;
$$ LANGUAGE plpgsql;

SELECT 
  COUNT(id) AS count,
  DATE(created_at) AS date,
  ( 
   getRecordsFromDate(DATE(created_at))
  ) AS total
FROM posts
GROUP BY 
    DATE(created_at)
ORDER BY
  DATE(created_at);

