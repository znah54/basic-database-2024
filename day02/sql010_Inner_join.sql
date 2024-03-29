-- 두개 이상의 테이블 SQL 쿼리 작성
-- Customer, Orders 테이블을 동시에 조회
SELECT*
  FROM Customer

-- Customer, Orders 테이블을 동시에 조회(둘의 custid가 일치하는 조건에서)
-- RDB에서 가장가장가장 중요한 쿼리문 1 - Join, 조인, 쪼인!
SELECT *
  FROM Customer, Orders
 WHERE Customer.custid = Orders.custid
 ORDER BY Customer.custid ASC;

 
 -- 주문한 책의 고객이름과 책판매액 조회
SELECT Customer.name
	  ,Orders.saleprice
  FROM Customer, orders
 WHERE Customer.custid = Orders.custid;

 -- 고객별로 주문한 모든 도서의 총판매액을 구하고, 고객별로 정렬
SELECT Customer.name
	 , SUM(Orders.saleprice) AS '판매액'
  FROM Customer, orders
 WHERE Customer.custid = Orders.custid
 GROUP BY Customer.[name]
 ORDER BY Customer.[name];


SELECT *
  FROM Customer, Orders
 WHERE Customer.custid = Orders.custid
 ORDER BY Customer.custid ASC;

 -- 세개 테이블 조인
SELECT *
  FROM Customer AS c, Orders AS o, Book AS b
 WHERE c.custid = o.custid
   AND o.bookid = b.bookid

-- 실제 표준 SQL Inner Join - 표준 SQL은 더 복잡함.
SELECT *
  FROM Customer AS c
 INNER JOIN Orders AS o
    ON c.custid = o.custid
 INNER JOIN Book AS b
    ON o.bookid = b.bookid;

-- 가격이 20,000원 이상인 도서를 주문한 고객의 이름과, 도서명 조회
SELECT * 
  FROM Customer AS c, Orders As o, Book AS b
 WHERE c.custid = o.custid
   AND o.bookid = b.bookid -- 여기까진 Join을 위한 조건
   AND b.price >= 20000 -- 그외 필터링을 위한 조건
