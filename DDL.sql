--  customer table
CREATE TABLE  customer(
customer_Id  VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
customer_name  VARCHAR2(20)  CONSTRAINT  notnull_name NOT NULL,
customer_tel  NUMBER
)
	--  product  table
CREATE TABLE  product(
product_Id VARCHAR2 (20) CONSTRAINT pk_product PRIMARY KEY,
product_name VARCHAR2 (20)  CONSTRAINT  notnull_name  NOT NULL,
Price   NUMBER  CONSTRAINT check_positive CHECK  (price>0)
)
	-- orders table
CREATE TABLE orders (
Customer_id VARCHAR2(20)
product_Id VARCHAR2 (20) CONSTRAINT pk_product PRIMARY KEY,
Quantity  NUMBER,
 Total_amount   NUMBER,
CONSTARINT fk1_order  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
CONSTARINT fk2_order  FOREIGN KEY (product_id) REFERENCES product(product_id)
)
	-- Add a column category 
ALERT TABLE product  ADD category VARCHAR2(20)
	-- Add a column order-Date
ALERT TABLE orders  ADD orderDate DATE CONSTRAINT  default_date DEFAULT  SYSDATE
