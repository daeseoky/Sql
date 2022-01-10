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
INSERT INTO `tbl_member` VALUES('p102', '김춘추', '010-1234-1001', 25, '신라');
INSERT INTO `tbl_member` VALUES('p103', '', '010-1234-1001', 25, '신라');
INSERT INTO `tbl_member` VALUES('p104', '김유신', '010-1234-1001', 25, '신라');
INSERT INTO `tbl_member` VALUES('p105', '김유신', '010-1234-1001', 25, '신라');


#실습 3-3