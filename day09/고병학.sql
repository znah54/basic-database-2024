-- 1번

SELECT Email
     , Mobile
	 , Names
	 , Addr
  FROM membertbl
 ORDER BY Addr DESC, Email ASC;

-- 2번

SELECT Names AS '도서명'
	 , Author AS '저자'
	 , ISBN
	 , price AS'정가'
  FROM bookstbl
 ORDER BY price DESC;

-- 3번

SELECT Names AS '회원명'
	 , Levels AS '회원등급'
	 , Addr AS '회원주소'
	 , rentalDate AS '대여일'
  FROM membertbl AS A
  LEFT OUTER JOIN rentaltbl AS B
  ON A.memberIdx = B.memberIdx
 WHERE rentalDate is NULL --and A.Levels ='A'
 ORDER BY Levels ASC, Names ASC, Addr DESC;

-- 4번

SELECT d.Names AS'책 장르'
	 , FORMAT(sum(b.Price), '#,#')+'원' AS'총합계금액'
  FROM divtbl AS d,  bookstbl b
 WHERE b.Division = d.Division
 GROUP BY d.Names

-- 5번

SELECT ISNULL(d.Names, '--합계--') AS'책 장르'
	 , COUNT(d.Names) AS '권수'
	 , FORMAT(sum(b.Price), '#,#')+'원' AS'총합계금액'
  FROM divtbl AS d,  bookstbl b
 WHERE b.Division = d.Division
 GROUP BY d.Names WITH ROLLUP

