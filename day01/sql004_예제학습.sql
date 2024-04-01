-- 모든 도서의 이름과 가격을 조회
-- CTRL+SHIFT+U -> 대문자, CTRL+SHIFT+L -> 소문자

SELECT bookname, price
	FROM Book;

-- 모든 도서의 가격와 이름을 검색
SELECT price, bookname
	FROM Book;

-- 모든 도서의 도서번호, 도서이름, 출판사 가격을 검색
SELECT *
	FROM Book;

SELECT bookid, bookname, publisher, price
	FROM Book;

-- 도서에서 출판사를 검색하시오 (중복제거)
SELECT DISTINCT publisher
	FROM Book;

-- 조건검색(조건 연산자 사용)
-- WHERE 절 = 가격이 2만원 미만인 도서를 검색하시오

SELECT * 
	FROM Book
	where price < 20000;

-- 가격이 1만원 이상, 2만원 이하인 도서를 검색
SELECT *
	FROM Book
	WHERE price BETWEEN 10000 AND 20000;

-- 출판사가 굿스포츠와 대한미디어 도서를 검색
SELECT *
	FROM Book
	WHERE publisher IN ('굿스포츠', '대한미디어');

-- 출판사가 굿스포츠와 대한미디어 아닌 도서를 검색
SELECT *
	FROM Book
	WHERE publisher NOT IN ('굿스포츠', '대한미디어');

-- 축구의 역사를 출한한 출판사 검색
SELECT bookname, publisher
	FROM Book
	WHERE bookname = '축구의 역사';

-- 도서 이름에 축구가 포함된 출판사를 검색
SELECT bookname, publisher
	FROM Book
	WHERE bookname LIKE '축구%'; -- 축구라는 글자로 시작


SELECT bookname, publisher
	FROM Book
	WHERE bookname LIKE '%축구'; -- 축구라는 글자로 끝


SELECT bookname, publisher
	FROM Book
	WHERE bookname LIKE '%축구%'; -- 축구라는 글자로 시작과 끝


-- 두글자에 구로 끝나는 단어로 시작되는 도서 이름에 포함된 출판사를 검색
SELECT bookname, publisher
	FROM Book
	WHERE bookname LIKE '_구%'; -- _(무슨글자든 한글자가 들어간) 구 라는 글자로 시작