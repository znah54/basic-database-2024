-- ��ȸ ��������
-- ���� �� �౸�� ���ϰ�, ������ 20,000�� �̻��� å�� ��ȸ
SELECT bookid
     , bookname
     , publisher
     , price
  FROM Book
 WHERE Bookname LIKE '%�౸%'
   AND price >= 20000;

-- ���ǻ簡 �½����� Ȥ�� ���ѹ̵�� �� ���� �˻�
SELECT *
  FROM Book
 WHERE publisher = '�½�����'
    OR publisher = '���ѹ̵��';

-- ����
-- �⺻������ ASC(ending : ��������) ��������
-- DESC(ending : ��������) �����Ұ�
SELECT *
  FROM Book
 ORDER BY bookname;

-- ������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �˻�
SELECT *
  FROM Book
 ORDER BY price ASC, bookname DESC;

SELECT *
  FROM Book
 ORDER BY price ASC, bookname ASC;

-- ���� ������ ��������, å���ǻ�� ������������ �˻�
SELECT *
  FROM Book
 ORDER BY price DESC, publisher ASC;

-- �ֱٿ� ��ϵ� å���� ������ å������ �˻�
SELECT *
  FROM Book
 ORDER BY bookid DESC;