create database if not exists wishlists;

use wishlists;
drop table if exists `product`;
drop table if exists`wish_list`;

CREATE TABLE IF NOT EXISTS `wish_list` (
`wish_list_id` INT(10) PRIMARY key AUTO_INCREMENT,
`wish_list_name` VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS `product` (
`product_id` INT(10) PRIMARY KEY,
`product_name` VARCHAR(200),
`product_price` DOUBLE (10,5),
`wish_list_id` INT(10),
foreign key(`wish_list_id`) references `wish_list`(`wish_list_id`)
);

CREATE TABLE IF NOT EXISTS `user` (
    `email` VARCHAR(50) PRIMARY KEY,
    `password` VARCHAR(12)
);