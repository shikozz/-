USE [master]
GO

CREATE DATABASE [RegistraturaBase]
ON PRIMARY 
( NAME = N'RegistraturaBase', FILENAME = N'D:\MSSQL\RegistraturaBase.mdf')
GO

USE [RegistraturaBase]
GO



--������� � ������
create table Roles(
	id int identity(1,1) not null,
	name nvarchar(100),
	primary key(id)
)

--���� �����
create table TypeServices(
	id int identity(1,1) not null,
	name nvarchar(100) not null
	primary key(id)
)

--���� �������������� ���������� � ������������
create table JobTitles(
	id int identity(1,1) not null, 
	name nvarchar(100) not null,
	description nvarchar(2000),
	primary key(id)
)

--���������� ���� ������������� � ����������(������ ���� ������������)
create table Users(
	id int identity(1,1) not null,
	name nvarchar(100) not null,
	snils nvarchar(11) not null,
	unique(snils),
	age int,
	gender bit,
	login nvarchar(100) not null,
	password nvarchar(100) not null,
	roleId int not null,
	dateReg dateTime,
	blocked bit,
	primary key(id),
	foreign key(roleId) references Roles(id),
)

--������� � ������� ����� ����������� �������� ����� � ��� �������������, � ������ ����� ����� ���� ��������� ����
create table Permissions(
	id int identity(1,1) not null,
	jobTitleId int not null,
	userId int not null,
	primary key(id),
	foreign key(userId) references Users(id),
	foreign key(jobTitleId) references JobTitles(id)
)

--���������� ������� ������������
create table Orders(
	id int identity(1,1) not null,
	clientId int not null,
	doctorId int not null,
	typeServiceId int not null,
	dateOrder dateTime not null,
	primary key(id),
	foreign key(typeServiceId) references TypeServices(id),
	foreign key(clientId) references Users(id),
	foreign key(doctorId) references Users(id)
)

set identity_insert Users on
insert into Users(id, name, snils, age, gender, login, password, roleId)
values	(1, '�������� ������� �������������', '88028707129', 25, 1, 'soloviev', 'sns25ru', 0),
		(2, '�������� ������� ���������', '71950154191', 69, 1, 'mamontov', 'mvd69ru', 0),
		(3, '������� ����� ����������', '24543969600', 19, 1, 'birukov', 'bel19ru', 0),
		(4, '������� ����� �������������', '44188153390', 41, 0, 'karpova', 'kir41ru', 0),
		(5, '���������� �������� �������', '43519629598', 55, 0, 'konovalova', 'ksk55ru', 0),
		(6, '������� ���������� ��������', '95941244544', 39, 0, 'avdeeva', 'ake39ru', 0)
set identity_insert Users off

set identity_insert TypeServices on
insert into TypeServices(id, name)
values	(1, '������ � �����'),
		(2, '����� ��������'),
		(3, '������ �� ���������'),
		(4, '������ ������ ������')
set identity_insert TypeServices off

set identity_insert JobTitles on
insert into JobTitles(id, name)
values	(1, '����-����������'),
		(2, '����-������������-������������'),
		(3, '����-�����������'),
		(4, '����-���������������'),
		(5, '����-���������'),
		(6, '����-�������'),
		(7, '����-�����������-�������'),
		(8, '����-�������������'),
		(9, '����-�������-����������� �������'),
		(10, '���������� ����'),
		(11, '����-�����������'),
		(12, '����-����������'),
		(13, '����-�����������'),
		(14, '����-������'),
		(15, '����-��������'),
		(16, '����-�������'),
		(17, '����-������������'),
		(18, '����-������'),
		(19, '���� ������-���������'),
		(20, '����-������������'),
		(21, '����-��������'),
		(22, '����-��������'),
		(23, '����-�����������'),
		(24, '����-�������������'),
		(25, '����-����������������'),
		(26, '����-����������'),
		(27, '���������'),
		(28, '������ ������')
set identity_insert JobTitles off

set identity_insert Roles on
insert into Roles(id, name)
values	(1, '�������������'),
		(2, '����'),
		(3, '������')
set identity_insert Roles off