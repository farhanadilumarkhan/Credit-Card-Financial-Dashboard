CREATE DATABASE ccdb;
USE ccdb;
CREATE TABLE cc_detail(
	Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,	
    Activation_30_Days INT,
	Customer_Acq_Cost INT,
    Week_Start_Date DATE,	
    Week_Num VARCHAR(20),	
    Qtr VARCHAR(10),	
    current_year INT,
    Credit_Limit DECIMAL(10,2),	
    Total_Revolving_Bal INT,	
    Total_Trans_Amt INT,	
    Total_Trans_Vol INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
	Use_Chip VARCHAR(10),	
    Exp_Type VARCHAR(50),	
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

CREATE TABLE cust_detail(
	Client_Num INT,	
    Customer_Age INT,	
    Gender VARCHAR(5),	
    Dependent_Count INT,
    Education_Level VARCHAR(50),	
    Marital_Status VARCHAR(20),	
    state_cd VARCHAR(50),	
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),	
    House_Owner VARCHAR(5),	
    Personal_loan VARCHAR(5),	
    contact VARCHAR(50),
    Customer_Job VARCHAR(50),	
    Income INT,	
    Cust_Satisfaction_Score INT
);

SELECT * FROM cc_detail;
SELECT * FROM cust_detail;

# Credit Card Table
LOAD DATA LOCAL INFILE'C:/Users/Farhan/Downloads/Farhan Adil/Python/Data Analyst/Credit Card Financial Dashboard/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
SET GLOBAL local_infile = 1;

# Customer Table 
LOAD DATA LOCAL INFILE'C:/Users/Farhan/Downloads/Farhan Adil/Python/Data Analyst/Credit Card Financial Dashboard/customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Next week data of Customer table
LOAD DATA LOCAL INFILE'C:/Users/Farhan/Downloads/Farhan Adil/Python/Data Analyst/Credit Card Financial Dashboard/cust_add.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

# Next week data of Credit card table
LOAD DATA LOCAL INFILE'C:/Users/Farhan/Downloads/Farhan Adil/Python/Data Analyst/Credit Card Financial Dashboard/cc_add.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM cc_detail WHERE Client_Num = 931822111;

DELETE FROM cc_detail 
WHERE CAST(Week_Start_Date AS CHAR) LIKE '0000%';







