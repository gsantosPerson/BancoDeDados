show databases;

create database bancoSPJ;
use bancoSPJ;

create table fornecedores(
	cods int auto_increment not null,
    sname char(10)  not null,
    status int,
    primary key (cods)
    );
    
insert into fornecedores values
	(default, 'smith', 20),
    (default, 'jones', 10),
    (default, 'black', 30),
    (default, 'clark', 20),
    (default, 'smith', 30);
    
alter table fornecedores
	add column city char(10) not null;
    
update fornecedores
	set city = 'london'
    where cods = 1;

update fornecedores
	set city = 'paris'
    where cods = 2;

update fornecedores
	set city = 'paris'
    where cods = 3;
    
update fornecedores
	set city = 'london'
    where cods = 4;

update fornecedores
	set city = 'new york'
    where cods = 5;

alter table fornecedores
	rename to s;

update s
	set city = 'brasilia'
    where cods = 5;

delete from s
	where cods = 4;
    
create database temp;

insert into s values
	(6, 'joe', 50, 'goiania');
    
create table p(
	codP int not null,
    pname char(6) not null,
    cores char(6) not null,
    primary key(codP)
);

insert into p values
	(1, 'nut', 'red'),
	(2, 'bolt', 'green'),
    (3, 'screw', 'blue'),
    (4, 'screw', 'red'),
    (5, 'cam', 'blue'),
    (6, 'cog', 'red');
    
create table j(
		codJ int not null,
        jName char(10) not null,
        city char(10) not null,
        primary key (codJ)
);

insert into j values
	(1, 'sorter', 'paris'),
    (2, 'punch', 'rome'),
    (3, 'reader', 'athens'),
    (4, 'console', 'athens');
    
create table spj(
	codS int not null,
    codP int not null,
    codJ int not null,
    qty int not null,
    primary key (codS, codP, codJ)
);

insert into spj values
	(1, 1, 1, 200),
    (1, 1, 4, 700),
    (2, 3, 1, 400),
    (2, 3, 2, 200),
    (2, 3, 3, 200),
    (2, 3, 4, 500);

alter table p
	modify column pname char(10);
    
alter table p
	modify column color;