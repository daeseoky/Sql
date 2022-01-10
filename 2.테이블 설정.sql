#날짜 : 2022/01/10
#이름 : 양대석
#내용 : 2.테이블 정리하기

#실습 2-1
CREATE TABLE `User2` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`   VARCHAR(10),
	`hp`     CHAR(13),
	`age`    TINYINT
);

INSERT INTO `User3` VALUES('A106', '김유신', '010-1234-6666', 25);
INSERT INTO `User3` VALUES('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User3` VALUES('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User3` VALUES('A104', '강감찬', '010-1234-4444', 45);

INSERT INTO `User3` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555', `age`=51;

#실습 2-2 (PRIMARY KEY는 한테이블에 한개만됨)
CREATE TABLE `User3` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`   VARCHAR(10),
	`hp`     CHAR(13) UNIQUE,
	`age`    TINYINT
);

#실습 2-3
CREATE TABLE `User4`(
	`seq`    INT AUTO_INCREMENT PRIMARY KEY,
	`name`   VARCHAR(10),
	`gender` TINYINT,
	`age`		INT,
	`addr`   VARCHAR(255) 
);

User5

#실습 2-4
CREATE TABLE `User5`(
	`seq`    INT AUTO_INCREMENT PRIMARY KEY,
	`name`   VARCHAR(10) NOT null,
	`gender` TINYINT,
	`age`		INT DEFAULT 1,
	`addr`   VARCHAR(255) 
);

#실습 2-5
CREATE TABLE `User6` LIKE `User5`;

#실습 2-6
INSERT INTO `User6`(`name`, `gender`, `age`, `addr`) SELECT `name`, `gender`, `age`, `addr` FROM `User5`;
