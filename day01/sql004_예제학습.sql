-- ��� ������ �̸��� ������ �˻��Ͻÿ�
-- Ctrl+Shift+U --> �빮��, Ctrl+Shift+L --> �ҹ���
SELECT bookname, price
  FROM Book;

-- ��� ������ ������ȣ, �����̸� ���ǻ� ������ �˻��Ͻÿ�.
SELECT *
  FROM Book;

-- �ǹ������� �Ӽ�, �÷����� �� ���°� �Ϲ���
SELECT bookid, bookname, publisher, price
  FROM Book;

-- �������� ���ǻ縦 �˻��Ͻÿ�(�ߺ�����).
SELECT ALL publisher
  FROM Book;

-- ���ǰ˻�(���ǿ����� ���)
-- ������ 20,000�� �̸��� ������ �˻��Ͻÿ�,
SELECT * 
  FROM Book
 WHERE price < 20000;
  
-- ������ 10,000���̻� 20,000������ ������ �˻��Ͻÿ�.
SELECT *
  FROM Book
 WHERE price >= 10000 AND price <= 20000;

SELECT *
  FROM Book
WHERE price BETWEEN 10000 AND 20000

-- ���ǻ簡 �½������� ���ѹ̵�� ������ �˻��Ͻÿ�
SELECT *
  FROM Book
WHERE publisher NOT IN('�½�����', '���ѹ̵��');

-- �౸�� ���縦 ������ ���ǻ縦 �˻��Ͻÿ�
SELECT bookname, publisher
  FROM Book
 WHERE bookname = '�౸�� ����'

-- ���� �̸��� �౸�� ���Ե� ���ǻ縦 �˻��Ͻÿ�
SELECT bookname, publisher
  FROM Book
 WHERE bookname LIKE '�౸%'; -- �౸��� ���ڷ� �����ϴ�

SELECT bookname, publisher
  FROM Book
 WHERE bookname LIKE '%�౸'; -- �౸��� ���ڷ� ������ 

-- �α��ڿ� ���� ������ �ܾ�� ���۵Ǵ� ���ǻ縦 �˻��Ͻÿ�
SELECT bookname, publisher
  FROM Book
 WHERE bookname LIKE '_��%'; -- _(�������ڵ� �ѱ��ڰ� ��) ����� ���ڷ� �����ϴ�