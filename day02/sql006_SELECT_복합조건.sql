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