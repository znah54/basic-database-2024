﻿-- OUTER JOIN(외부 조인)
-- LEFT OUTER JOIN vs RIGHT OUTER JOIN

SELECT * 
  FROM TableA A
  LEFT OUTER JOIN TableB B
    ON A.key = B.key;

-- 이둘
