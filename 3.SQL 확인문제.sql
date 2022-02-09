#날짜 : 2022/01/10
#이름 : 양대석
#내용 : 3.AQL 확인문제

#실습 3-1
CREATE TABLE `tbl_member`(
	`memberID`     VARCHAR(10) PRIMARY KEY,
	`memberName`   VARCHAR(10) NOT NULL,
	`memberHP`		CHAR(13) UNIQUE,
	`memberAge`		TINYINT,
	`memberAddr`   VARCHAR(20) 
);

CREATE TABLE `tbl_product`(
	`productCode` TINYINT AUTO_INCREMENT PRIMARY KEY,
	`productName` VARCHAR(10) NOT NULL,
	`price`		  INT NOT NULL, 
	`amount`		  INT DEFAULT 0,
	`company`     VARCHAR(10), 
	`makeDate`    DATE 
);
#실습 3-2
INSERT INTO `tbl_member` VALUES('p101', '김유신', '010-1234-1001', 25, '신라');
INSERT INTO `tbl_member` VALUES('p102', '김춘추', '010-1234-1002', 23, '신라');
INSERT INTO `tbl_member` (`memberID`, `memberName`, `memberAge`, `memberAddr`) 
           		   VALUES ('p103', '장보고', 31, '통일신라');
INSERT INTO `tbl_member` (`memberID`, `memberName`, `memberAddr`)
						 VALUES('p104', '강감찬', '고려');
INSERT INTO `tbl_member` (`memberID`, `memberName`, `memberHP`, `memberAge`)
						 VALUES('p105', '이순신', '010-1234-1005', 50);

INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`)
						  VALUES('냉장고', 800, 10, 'LG', '2022-01-06');
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`)
						  VALUES('노트북', 1200, 20, '삼성', '2022-01-06');
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`)
						  VALUES('TV', 1400, 6, 'LG', '2022-01-06');
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`)
						  VALUES('세탁기', 1000, 8, 'LG', '2022-01-06');						  						  						  
INSERT INTO `tbl_product` (`productName`, `price`, `amount`)
						  VALUES('컴퓨터', 1100, 0);
INSERT INTO `tbl_product` (`productName`, `price`, `amount`, `company`, `makeDate`)
						  VALUES('휴대폰', 900, 102, '삼성', '2022-01-06');

#실습 3-3
SELECT `memberName` FROM `tbl_member`;
SELECT `memberName`,`memberHP` FROM `tbl_member`;
SELECT * FROM `tbl_member` WHERE `memberID` = 'p102';
SELECT * FROM `tbl_member` WHERE `memberID` = 'p104' OR `memberID` = 'p105';
SELECT * FROM `tbl_member` WHERE `memberAddr` = '신라';
SELECT * FROM `tbl_member` WHERE `memberAge` > 30;
SELECT * FROM `tbl_member` WHERE `memberHP` IS NULL;
UPDATE `tbl_member` SET `memberAge` = 42 WHERE `memberID` = 'P104';
UPDATE `tbl_member` SET `memberAddr`= '조선' WHERE `memberID` = 'P105';
DELETE FROM `tbl_member` WHERE `memberID` = 'P103';
SELECT * FROM `tbl_member`;

SELECT `productName` FROM `tbl_product`;
SELECT `productName`, `price` FROM `tbl_product`;
SELECT * FROM `tbl_product` WHERE `company` = 'LG';
SELECT * FROM `tbl_product` WHERE `company` = '삼성';
UPDATE `tbl_product` SET `company` = '삼성', 
								 `makeDate`='2022-01-01'
							WHERE `productCode`= 5;

SELECT * FROM `tbl_product`;





