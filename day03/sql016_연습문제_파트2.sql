-- 1. 주문하지 않은 고객의 이름(서브쿼리 사용)
SELECT name 
  FROM Customer
EXCEPT
SELECT [name]
  FROM Customer
 WHERE custid IN(SELECT custid FROM Orders);

SELECT [name]
  FROM Customer
 WHERE custid NOT IN(SELECT DISTINCT custid
                 FROM Orders)

-- 2. 주문 금액의 총액과 주문의 평균 금액
SELECT SUM(saleprice) AS[주문 총액]
	  ,AVG(saleprice) AS[주문 평균]
  FROM Orders;

-- 3. 고객의 이름과 고객별 구매액
SELECT (SELECT name FROM Customer c WHERE c.custid = o.custid) AS '구매고객'
     , SUM(o.saleprice) AS '고객별 구매액'
  FROM Orders AS o
 GROUP BY o.custid

-- 4. 고객의 이름과 고객이 구매한 도서 목록
SELECT c.[name], b.bookname
  FROM Customer c, Orders o, Book b
 WHERE c.custid = o.custid
   AND o.bookid = b.bookid
 ORDER BY c.[name] ASC;

-- 5. 도서의 가격(Book테이블)과 판매가격(Orders테이블)의 차이가 가장 많은 주문
SELECT *
  FROM Orders AS o, Book AS b
 WHERE o.bookid = b.bookid
-- 6. 도서 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름