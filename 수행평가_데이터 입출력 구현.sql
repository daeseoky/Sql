# 고객 테이블(TestCustomer)
CREATE TABLE `TestCustomer` (
	`custid`	 VARCHAR(10) PRIMARY KEY,
	`name`	 VARCHAR(10),
	`age`		 INT,
	`level`	 VARCHAR(10),
	`job`		 VARCHAR(10),
	`point`	 INT DEFAULT 0
);

# 제품 테이블(TestProduct)
CREATE TABLE `TestProduct` (
	`productid`  CHAR(3),
	`pName`      VARCHAR(10),
	`stock`      INT,
	`price`  	 INT,
	`maker`		 VARCHAR(10),
	PRIMARY KEY(`productid`)
);

# 주문 테이블(TestOrder)
CREATE TABLE `TestOrder`  (
	`orderid`			INT AUTO_INCREMENT,
	`orderer`			VARCHAR(10),
	`orderProduct`		CHAR(3),
	`orderCount`		INT,
	`orderaddress`		VARCHAR(30),
	`orderDate`			DATE,
	PRIMARY KEY(`orderid`),
	FOREIGN KEY(`orderer`) REFERENCES TestCustomer(`custid`),
	FOREIGN KEY(`orderProduct`) REFERENCES TestProduct(`productid`)
);


# 데이터 입력

# TestCustomer
INSERT INTO `TestCustomer` VALUES ('c101', '김유신', 20, 'gold', '학생', 1000);
INSERT INTO `TestCustomer` VALUES ('c102', '김춘추', 25, 'gold', '간호사', 2500);
INSERT INTO `TestCustomer` VALUES ('c103', '장보고', 28, 'gold', '교사', 4500);
INSERT INTO `TestCustomer` VALUES ('c104', '강감찬', 22, 'gold', '학생',0);
INSERT INTO `TestCustomer` VALUES ('c105', '이순신', 35, 'gold', '회사원', 5000);
INSERT INTO `TestCustomer` VALUES ('c106', '정약용', null,'gold', '의사', 300);
INSERT INTO `TestCustomer` VALUES ('c107', '안중근', 31, 'gold', '회사ㅏ원', 500);

# TestProduct
INSERT INTO `TestProduct` VALUES ('p01', '그냥만두', 5000, 4500, '대한식품');
INSERT INTO `TestProduct` VALUES ('p02', '매운쫄면', 2500, 5500, '민국푸드');
INSERT INTO `TestProduct` VALUES ('p03', '찰떡파이', 3600, 2600, '한빛제과');
INSERT INTO `TestProduct` VALUES ('p04', '왕초콜릿', 1250, 2500, '한빛제과');
INSERT INTO `TestProduct` VALUES ('p05', '얼큰라면', 2200, 1200, '대한식품');
INSERT INTO `TestProduct` VALUES ('p06', '통통우동', 1000, 1550, '민국푸드');
INSERT INTO `TestProduct` VALUES ('p07', '담콤새콤', 1650, 1500, '한빛제과');

# TestOrder
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c101', 'p03', 10, '서울시 마포구', '2020-01-01');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c105', 'p01', 5, '인천시 계양구', '2020-01-10');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c102', 'p06', 45, '경기도 부천시', '2020-01-11');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c103', 'p02', 8, '부산시 금정구', '2020-02-01');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c105', 'p06', 36, '경기도 용인시', '2020-02-20');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c102', 'p01', 19, '충청북도 보은군', '2020-03-02');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c101', 'p03', 22, '서울시 영등포구', '2020-03-15');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c107', 'p02', 50, '강원도 춘천시', '2020-04-10');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c102', 'p04', 15, '전라남도 목포시', '2020-04-11');
INSERT INTO `TestOrder` (`orderer`, `orderProduct`, `orderCount`, `orderaddress`, `orderDate`) 
						VALUES ('c103', 'p03', 20, '경기도 안양시', '2020-05-22');

# 데이터 조회
SELECT `custid`, `name`, `level` FROM `TestCustomer`;
SELECT * FROM `TestCustomer`;
SELECT `maker` FROM `TestProduct`;
SELECT `pName`, `price` AS `가격`  FROM `TestProduct`;
SELECT `pName`, `stock`, `price` FROM `TestProduct` WHERE `maker` = '한빛제과';
SELECT `orderProduct`, `orderCount`,`orderDate` FROM `TestOrder` 
WHERE `orderer` = 'c101' AND `orderCount` >=15;
SELECT `orderProduct`, `orderCount`,`orderDate`, `orderer` FROM `TestOrder` 
WHERE `orderer` = 'c101' OR `orderCount` >=15;
SELECT `pName`, `price`, `maker` FROM `TestProduct` WHERE `price` >=2000 AND `price`<= 3000 
SELECT `name`, `age`, `level`, `point` FROM `TestCustomer` WHERE `name` LIKE '김%';

SELECT `pName` FROM `TestCustomer` AS a
JOIN `TestOrder`       AS b ON a.custid = b.orderer
JOIN `TestProduct`   AS c ON b.orderProduct = c.productid
WHERE `custid` = 'c102';











