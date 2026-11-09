create database bank;
use bank;
create table customer(
CustomerID int,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(15));
select * from customer;
alter table customer add column DateofBirth date;
alter table customer modify Phone varchar(20);

create table Accounts(
AccountID int,
AccountType varchar(20),
Balance decimal(10,2));
select * from Accounts;
create table Transaction(
TransactionID int,
TransactionDate date,
Amount decimal(10,2),
TransactionType varchar(20));
select * from Transaction;
create table Branch(
BranchID int,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15));
select * from Branch;
create table AccountBranches(
AssignmentDate date);
select * from AccountBranches;
create table Loan(
LoanID int,
LoanAmount decimal(10,2),
IntrestRate decimal(5,2),
StartDate date,
EndDate date);
select * from Loan;
 alter table customer add constraint primary key(CustomerID);
 
 alter table customer add constraint foreign key(Accounts) references CustomerID;
 
 alter table customer modify FirstName varchar(50) not null;
 select * from Accounts;
 alter table customer add constraint unique(Email);
alter table Accounts add column CustomerID int;

alter table Accounts add constraint foreign key(CustomerID) references customer(CustomerID);

alter table Loan add constraint foreign key(CustomerID) references customer(customerid);
alter table Loan add column customerid int;
alter table Branch add constraint foreign key(BranchID) references Accounts(CustomerID);

alter table Transaction add constraint foreign key(Account_ID) references Accounts(Account_ID);
insert into customer value(101,"Rahul","Sharma","rahul.sharma@gmail.com",9999999999,19980415);
insert into customer value(102,"Priya","Patil","priya@gmail.com",9988776655,2000920),(103,"Amit","Patel","amit.patel@gmail.com",9876500001,19950618),(104,"Sneha","Joshi","sneha.joshi@gmail.com",9876500002,19970912),(105,"Rohan","Kulkarni","rohan.k@gmail.com",9876500003,19931125);

alter table Accounts add primary key(AccountID);

select * from Accounts where AccountID=201;

insert into Loan value(301,500000.00,8.50,20250115,20300115,101);
insert into Loan value(302,300000.00,9.25,20250210,20280210,102),(303,750000.00,8.70,20250320,20320325,103),
(304,250000.00,10.00,20250405,20290405,104),(305,1000000.00,7.95,20250512,20350512,105);
alter table Transaction add column Account_ID int;
alter table Transaction add constraint foreign key(TransactionID) references Accounts(Account_ID); 
insert into Transaction value(301,20250510,5000.00,"Deposit",201);
insert into Transaction value(302,20250511,2500.00,"Withdraw",202),(303,20250512,10000.00,"Deposit",203),(304,20250513,3000.00,"Withdraw",204),(305,20250514,7000.00,"Deposit",205);


insert into Accounts value(201,"Savings",25000.00,101);
insert into Accounts value(202,"Current",40000.00,102),(203,"Savings",35000.00,103),(204,"Current",60000.00,104),(205,"Savings",45000.00,105);

insert into Branch value(1,"Mumbai Branch","Andheri,Mumabi",0221111111);
insert into Branch value(2,"Pune Branch","Shivaji Nagar,Pune",0202222222),(3,"Nashik Branch","College road,Nashik",0253222222),(4,"Nagpur Branch","Sitabuldi,Nagpur",0712333333),
(5,"NaviMumbai Branch","Vahi,NaviMumbai",0224444444);


select * from customer;
select * from Accounts;
select * from Transaction;
select * from Branch;
select * from Loan;

-- 1 Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.
select AccountID,AccountType,Balance from Accounts;

-- 2 Retrieve Customers with Savings Accounts
select * from Accounts
 where AccountType="Savings";

-- 3 Retrieve Accounts with Balance Greater Than 25000
select * from Accounts
where Balance>25000;

-- 4 Retrieve Transactions Between Specific Amounts 5000 -20000
select * from Accounts
where Balance>5000 and Balance<20000;

-- 5 Retrieve Records for Selected Customers 101,102,103,104
select * from customer
where CustomerID in (101,102,103,104);

-- 6 This displays customers whose names start with the letter R.
select * from customer
where FirstName like "R%";

-- 1 Retrieve all current account records
select * from Accounts
where AccountType="Current";

-- 2 Find accounts with balance less than 15000
select * from Accounts
where Balance<15000;

-- 3 Display transactions between 1000 and 10000
select * from Transaction
where Amount>1000 and Amount<10000;

-- 4 Retrieve customer records for CustomerID 104 and 105
select * from customer
where CustomerID in (104,105);

-- 5 Display customers whose last name starts with S
select * from customer 
where LastName like "S%";

select * from customer where LastName like "S%" ;

select * from customer where LastName like "%a" ;

select * from customer where LastName like "%e%";

select * from customer where FirstName like "A___";

select * from customer where FirstName regexp "^A";

select * from customer where FirstName regexp "t$";

select * from customer where FirstName regexp "amit|rahul";




