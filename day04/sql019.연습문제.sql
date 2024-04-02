SELECT *
  FROM orders
 WHERE bookid IN(SELECT bookid
                   FROM Book
                  WHERE publihser IN (SELECT b.publihser
                                        FROM Customer AS c, Orders AS o, Book AS b1
                                       WHERE c.custid = o.custid
                                         AND o.bookid = b.bookid
                                         AND c.[name] = '박지성'));

-- 3. 전체 고객에서 30% 이상이 구매한 도서

SELECT b.custid
     , CONVERT(float, b.custCount) / b.totalCount AS '구매율'
  FROM (SELECT custid
             , COUNT(custid) AS custCount
             ,(SELECT COUNT(custid) FROM Orders) AS totalCount
          FROM Orders
         GROUP BY custid) AS b
 WHERE CONVERT(float, b.custCount) / b.totalCount >= 0.3;

-- 4-1 새 도서 추가
INSERT INTO Book
     VALUES (14, '스포츠 세계', '대한미디어', 10000);

-- 4-2 삼성당 도서 삭제
DELETE FROM Book
 WHERE publisher = '삼성당';

-- 4-3 이상미디어 출판 도서 삭제하시오
-- 참조 제약조건에서 걸리기 때문에 삭제가 불가
-- 삭제하려면 Orders테이블에서 bookid 7,8을 삭제 후 삭제 가능
DELETE FROM Book
 WHERE publisher = '이상미디어';

-- 4-4 출판사 대한미디어를 대한출판사로 바꾸시오
UPDATE Book테이블
   SET publisher = '대한출판사'
 WHERE publihser = '대한미디어';

UPDATE Book테이블
   SET publisher = '대한출판사'
 WHERE bookid IN(SELECT bookid
                   FROM Book
                  WHERE publihser = '대한미디어')
