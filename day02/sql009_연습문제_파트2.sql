-- 연습문제 PART2
-- 1번
SELECT COUNT(bookid)
  FROM Book;

-- 2번
SELECT COUNT(publisher)
  FROM Book;

-- 3번
SELECT [name],[address]
  FROM Customer;

-- 4번
SELECT orderid
  FROM Orders
 WHERE orderdate BETWEEN '2021-07-04' AND '2021-07-07';

-- 5번
SELECT orderid
  FROM Orders
 WHERE orderdate not BETWEEN '2021-07-04' AND '2021-07-07'

-- 6번
SELECT [name], [address]
  FROM Customer
 WHERE [name] LIKE '김%';

-- 7번
SELECT [name], [address]
  FROM Customer
 WHERE [name] LIKE '김%아';