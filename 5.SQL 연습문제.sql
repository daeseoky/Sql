#날짜 : 2022/01/13
#이름 : 양대석
#내용 : 5.SQL 연습문제

#문제 1.다음과 같은 속성을 가진 Book 테이블을 생성 후 그림과 같이 데이터를 삽입하시오
CREATE TABLE `Book` (
           `bookid`    INT AUTO_INCREMENT PRIMARY KEY,
           `bookname`  VARCHAR (20),
           `publisher` VARCHAR (10),
           `price`     INT 
);


INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('축구의 역사','굿스포츠',7000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('축구아는 여자','나무수',13000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('축구의 이해','대한미디어',22000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('골프 바이블','대한미디어',35000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('피겨 교본','굿스포츠',8000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('역도 단계별기술','굿스포츠',6000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('야구의 추억','이상미디어',20000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('야구를 부탁해','이상미디어',13000);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('올림픽 이야기','삼성당',7500);
INSERT INTO `Book`(`bookname`,`publisher`,`price`) 
     			VALUE ('Olympic Champions','Pearson',13000);

#문제 2.다음과 같은 속성을 가진 Customer 테이블을 생성 후 그림과 같이 데이터를 삽입하시오
CREATE TABLE `Customer` (
					`custid`   INT AUTO_INCREMENT PRIMARY KEY,
					`name`    VARCHAR (10),
					`address` VARCHAR (10),
					`phone`   VARCHAR (13)
);

INSERT INTO `Customer` (`name`,`address`,`phone`) 
				VALUE('박지성','영국 맨체스타','000-5000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) 
				VALUE('김연아','대한민국 서울','000-6000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) 
				VALUE('장미란','대한민국 강원도','000-7000-0001');				
INSERT INTO `Customer` (`name`,`address`,`phone`) 
				VALUE('추신수','미국 클리브랜드','000-8000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) 
				VALUE('박세리','대한민국 대전',null);



#문제 3.다음과 같은 속성을 가진 Orders 테이블을 생성 후 그림과 같이 데이터를 삽입하시오
CREATE TABLE `Orders`(
					`orderid`   INT AUTO_INCREMENT PRIMARY KEY,   
					`custid`    INT,
					`bookid`    INT,
					`saleprice` INT,
					`orderdate` DATE
);

INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(1, 1, 6000, '2014-07-01');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(1, 3, 21000, '2014-07-03');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(2, 5, 8000, '2014-07-03');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(3, 6, 6000, '2014-07-04');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(4, 7, 20000, '2014-07-05');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(1, 2, 12000, '2014-07-07');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(4, 8, 13000, '2014-07-07');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(3, 10, 12000, '2014-07-08');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(2, 10, 7000, '2014-07-09');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`)
				VALUE(3, 8, 13000, '2014-07-10');

#문제 4.
SELECT `custid`, `name`, `address` FROM `Customer`;

#문제 5.
SELECT `bookname`,`price` FROM `Book`;

#문제 6.
SELECT `price`,`bookname` FROM `Book`;

#문제 7.
SELECT `bookid`,`bookname`,`publisher`,`price` FROM `Book`;

#문제 8.
SELECT `publisher` FROM `Book`;

#문제 9. DISTINCT는 중복 제거
SELECT DISTINCT `publisher` FROM `Book` GROUP BY `publisher`;

#문제 10.
SELECT*FROM `Book` WHERE `price`>=20000;

#문제 11.
SELECT*FROM `Book` WHERE `price`<20000;

#문제 12.
SELECT*FROM `Book` WHERE `price`>=10000 AND `price`<=20000;

#문제 13.
SELECT `bookid`, `bookname`, `price` FROM `Book` WHERE `price` BETWEEN 15000 AND 30000;

#문제 14.
SELECT*FROM `Book` WHERE (`bookid`=2 OR `bookid`=3 OR `bookid`=5);
SELECT*FROM `Book` WHERE `bookid` IN 2, 3, 5);

#문제 15.
SELECT*FROM `Book` WHERE MOD(`bookid`,2)=0;
SELECT*FROM `Book` WHERE `bookid`%2=0;

#문제 16.
SELECT*FROM `Customer` WHERE `name` LIKE '박%';

#문제 17.
SELECT*FROM `Customer` WHERE `address` LIKE '%대한민국%';

#문제 18.
SELECT*FROM `Customer` WHERE `phone` IS NOT NULL ;

#문제 19.
SELECT*FROM `Book` WHERE `publisher`='굿스포츠' OR `publisher`= '대한미디어';

#문제 20.
SELECT `publisher` FROM `Book` WHERE `bookname`='축구의 역사';

#문제 21.
SELECT `publisher` FROM `Book` WHERE `bookname`LIKE '%축구%';

#문제 22.
SELECT * FROM `Book` WHERE `bookname`LIKE '_구%';

#문제 23.
SELECT * FROM `Book` WHERE `bookname`LIKE '%축구%' AND `price`> 20000;

#문제 24.
SELECT * FROM `Book` ORDER BY `bookname` ;

#문제 25.
SELECT * FROM `Book` ORDER BY `price`,`bookname` ;

#문제 26.
SELECT * FROM `Book` ORDER BY `price` DESC, `publisher`;

#문제 27.
SELECT * FROM `Book` ORDER BY `price` DESC LIMIT 3;

#문제 28.
SELECT * FROM `Book` ORDER BY `price` LIMIT 3;

#문제 29.
SELECT `name` FROM `Customer` AS `c`
              LEFT JOIN `Orders` AS `o` ON c.custid = o.custid
              WHERE `orderid` IS NULL; 

SELECT `name` FROM `Customer` 
WHERE `name` NOT IN(SELECT `name` FROM `Customer` WHERE `custid` IN(SELECT `custid` FROM `Orders`));

#문제 30.
SELECT SUM(`saleprice`) AS `총판매액`  FROM `Orders`;

#문제 31.
SELECT SUM(`saleprice`) AS `총판매액`  FROM `Orders` WHERE `custid` = 2; 

#문제 32.
SELECT SUM(`saleprice`) AS `총판매액`, 
	  	 AVG(`saleprice`) AS `평균값`,
	  	 MIN(`saleprice`) AS `최저가`,
	  	 MAX(`saleprice`) AS `최고가액`
FROM `Orders`;	  	 

#문제 33.
SELECT COUNT(*) AS `판매건수` FROM `Orders`;

#문제 34.
SELECT REPLACE (`bookname`, `야구`, `농구`) AS `bookname`, `publisher`,` price` FROM `Book`;

#문제 35.
SELECT `custid`, COUNT(*) AS `수량` FROM `Orders` WHERE `saleprice` >= 8000
GROUP BY `custid`
HAVING `수량` >=2;

#문제 36.
SELECT * FROM `Customer` AS `c`
         JOIN `Orders` AS `o` ON c.custid = o.custid;
SELECT * FROM `Customer` JOIN `Orders` USING(`custid`);        
SELECT * FROM `Customer`,`Orders` WHERE `Customer`.custid = `Orders`.custid;    

#문제 37.
SELECT * FROM `Customer` AS `c`
 			JOIN `Orders` AS `o` ON c.custid = o.custid
 			ORDER BY c.custid;
 			
 			
 			
#문제 38.
SELECT `name`, `saleprice` FROM `Customer` AS `c`
 			JOIN `Orders` AS `o` ON c.custid = o.custid;

#문제 39.
SELECT `name`, SUM(`saleprice`) FROM `Customer` AS `c`
 			JOIN `Orders` AS `o` ON c.custid = o.custid
GROUP BY c.custid	
ORDER BY c.`name`;		

#문제 40. 고객의 이름과 고객이 주문한 도서의 이름을 조회하시오.
SELECT `NAME`,`bookname` FROM `Book` AS `a`
JOIN `Orders` AS `b` ON a.bookid = b.bookid
JOIN `Customer` AS `c` ON b.custid = c.custid;
#문제 41.
SELECT `NAME`,`bookname` FROM `Book` AS `a`
JOIN `Orders` AS `b` ON a.bookid = b.bookid
JOIN `Customer` AS `c` ON b.custid = c.custid
WHERE `price` =20000;

#문제 42. 도서를 구매하지 않은 고객을 포함하여 고객의 이름과 고객이 주문한 도서의 판매가격을 구하시오.
SELECT `NAME`,`saleprice` FROM `Orders` AS `a`
RIGHT JOIN `Customer` AS `b` ON a.custid = b.custid

#문제 43. 가장 비싼 도서의 이름을 조회하시오.
SELECT `bookname` FROM `Book`  WHERE `price` = (SELECT MAX(`price`) FROM `Book`);

#문제 44. Book 테이블에 새로운 도서 ‘스포츠 의학’을 삽입하시오. 스포츠 의학은 한솔의학서적에서 출간 했으며 가격은 미정이다.
INSERT INTO `Book`(`bookid`,`bookname`,`publisher`) VALUES (11,'스포츠 의학','한솔의학서적');

#문제 45. Customer 테이블에서 고객번호가 5인 고객의 주소를 ‘대한민국 부산’으로 변경하시오
UPDATE `Customer` SET `address`='대한민국 부산' WHERE `custid`='5';

#문제 46. Customer 테이블에서 고객번호가 5인 고객을 삭제하시오.
DELETE FROM `Customer` WHERE `custid`=5;
