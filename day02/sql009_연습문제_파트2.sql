-- �������� PART2
-- 1��
SELECT COUNT(bookid)
  FROM Book;

-- 2��
SELECT COUNT(publisher)
  FROM Book;

-- 3��
SELECT [name],[address]
  FROM Customer;

-- 4��
SELECT orderid
  FROM Orders
 WHERE orderdate BETWEEN '2021-07-04' AND '2021-07-07';

-- 5��
SELECT orderid
  FROM Orders
 WHERE orderdate not BETWEEN '2021-07-04' AND '2021-07-07'

-- 6��
SELECT [name], [address]
  FROM Customer
 WHERE [name] LIKE '��%';

-- 7��
SELECT [name], [address]
  FROM Customer
 WHERE [name] LIKE '��%��';