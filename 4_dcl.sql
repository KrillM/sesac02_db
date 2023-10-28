use sesac;

create table visitor(
	id int auto_increment primary key not null,
    username varchar(10) not null,
	comment mediumtext
);

insert into visitor values(null, '이지은', '어느 쪽이게? 얼굴만 보면 몰라 속마음과 다른 표정을 짓는 일 아주 간단하거든');
insert into visitor values(null, '이찬혁', '어떻게 이별까지 사랑하겠어 널 사랑하는 거지');

select * from visitor;
drop table visitor;

create user 'user'@'%' identified by '1234';
grant all privileges on *.* to 'user'@'%' with grant option;
flush privileges;

alter user 'user'@'%' identified with mysql_native_password by '1234qwer*';

select host, user from mysql.user;