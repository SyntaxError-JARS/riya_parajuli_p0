--Banking App Database (riya_parajuli_p0)

--step 1  create a schema 
create schema banking;

--step 2 Create the table under banking schema

create table users (
    "first" varchar(20) not null,
	"last" varchar(20) not null,
	"email" varchar(30) not null unique,
	"phone" varchar(10) not null unique,
	"username" varchar(25) primary key,
	"userpassword" varchar(12)not null
);


create table banking (
"username" varchar(25) primary key,
"account_name" varchar(25) not null,
"amount" int not null
);


create table transcation(
"user_name" varchar(25) primary key,
"deposite" int not null,
"withdraw" int not null
);

alter table users 
add constraint fk_banking foreign key(username) references banking (username)

alter table banking 
add constraint fk_transaction foreign key(username) references transcation (user_name)



-- Step 3 insert data in the table, 
insert into users 
values
('Riya', 'Parajuli', )


-- Step 4

select * from users;
select * from banking;
select * from transcation;

-- Step 5 Few testing

alter table banking
add "checking_account" varchar(25);

alter table banking
add "savings_account" varchar(25);

alter table banking
add "security_question" varchar(50);

alter table banking
add "pin_code" varchar(4);





set checking_account = '726734781', savings_account = '826739467', security_question = 'Where did you live when you were 12?', pin_code = '5624'


update account_info
set checking_account = '875315896', savings_account = '487526853', security_question = 'Who was your favorite teacher in high school?', pin_code = '4857'
where id = 2;

update account_info
set checking_account = '257886579', savings_account = '789254783', security_question = 'What is your pet name?', pin_code = '1895'
where id = 3;

update account_info
set checking_account = '157863486', savings_account = '287536815', security_question = 'What is your favorite film?', pin_code = '7854'
where id = 4;

update account_info
set checking_account = '853752189', savings_account = '489637518', security_question = 'What is your favorite ice cream flavor?', pin_code = '6875'
where id = 5;

update account_info
set checking_account = '486578924', savings_account = '675418972', security_question = 'At what age did you learn to ride a bike?', pin_code = '2357'
where id = 6;

update account_info
set checking_account = '487058924', savings_account = '675418872', security_question = 'At what age did you learn to Spanish?', pin_code = '2087'
where id = 7;

update account_info
set checking_account = '487058924', savings_account = '675418872', security_question = 'At what age did you learn to Spanish?', pin_code = '2087'
where id = 7;

-- Delete a row.

DELETE FROM account_info WHERE id = 1;


