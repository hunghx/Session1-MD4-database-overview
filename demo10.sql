
-- tạo csdl 
create schema `demo_csdl`;
-- xóa csdl 
-- dRop database `demo_csdL`;

-- select database 
use `demo_csdl`;
-- tạo bảng
create table `Catalog`
(
id int primary key auto_increment,
`name` varchar(255) ,
`description` varchar(255) default 'hehe',
`status` bit default 1
);

create table Product(
id int primary key,
name varchar(100) not null unique,
price double check(price > 0),
catalog_id int not null,
foreign key (catalog_id) references catalog(id)
-- primary key(id)
);
alter table product 
add column stock int default 10;


Alter table Product
add constraint check_price check(price < 100);

-- insert into Product values(3,'quần áo jean nữ',100,3);
-- insert into Product values(3,'',100);
-- drop table `catalog`;
-- alter table `catalog` 
-- modify column `description` int ;
-- INSERT INTO `demo_csdl`.`catalog` (`name`) VALUES ('Quần');
-- INSERT INTO `demo_csdl`.`catalog` (`name`, `status`) VALUES ('Mũ 2', b'0');