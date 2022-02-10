#Q 1
SELECT *
FROM customers;

#Q 2 
SELECT firstName, lastName
FROM employees;

#Q 3
SELECT *
FROM employees;

#Q 4
SELECT *
FROM orderdetails;
#O objetivo desta query é obter todas as ordens registadas na tabela de ordens pedidas.

#Q 5
SELECT *
FROM products
WHERE quantityInStock < 1500;

#Q 6
SELECT *
FROM products
WHERE quantityInStock >=3600;

#Q 7
SELECT *
FROM employees
WHERE lastName = 'Firrelli';

#Q 8
SELECT * 
FROM employees 
WHERE firstName != 'Leslie';

#Q 9
SELECT * 
FROM products
WHERE productScale
IN ("1:12","1:50","1:72"); 

#Q 10
SELECT *
FROM products
WHERE buyPrice
BETWEEN 40 AND 60;

#Q 11
SELECT *
FROM products
WHERE productName 
LIKE '19%';
 
 #Q 12
 SELECT *
 FROM products
 WHERE productDescription
 LIKE '%Ford%';
 
 #Q 13
 SELECT *
 FROM products
 WHERE productName
 LIKE ('1952%' '%Renault%');
 
 #Q 14
 SELECT *
 FROM orders
 WHERE comments
 IS NULL;
 
 #Q 15
 SELECT *
 FROM customers
 WHERE country IN ('France', 'Sweden') AND creditLimit > 80000;
 
 #Q 16
 SELECT *
 FROM customers
 WHERE postalCode IN ('10022', '28023', '58339', '94217') AND creditLimit BETWEEN  60000 AND 70000;
 
 #Q 17 A ordenação do resultados das queries pode ser feita com a expressão ORDER BY
 SELECT *
 FROM employees
 ORDER BY email ASC;
 
 #Q 18
 SELECT *
 FROM employees
 ORDER BY jobTitle ASC, email DESC;
 #ORDER BY jobTitle, email ASC;
    
 #Q 19
 SELECT customerName
 FROM customers
 ORDER BY customerName ASC;
 
 #Q 20
 SELECT *
 FROM customers
 ORDER BY creditLimit DESC;
 
 #Q 21
 SELECT *
 FROM products
 ORDER BY FIELD(productLine,'Trucks and Buses', 'Classic Cars', 'Motorcycles'), productLine ASC;
 
 #Q 22
 SELECT *
 FROM customers
 ORDER BY creditLimit DESC
 LIMIT 1;
 
 #Q 23
 SELECT *
 FROM customers
 ORDER BY creditLimit DESC
 LIMIT 5 offset 4;
 
 #Q 24
 SELECT 1+1, 2*5, 10/3, power(3,2);
 
 #Q 25
 SELECT 1+1 as SOMA, 2*5 as MULTIPLICAÇÂO, 10/3 as DIVISÂO, power(3,2) as POTENCIAL;
 
 #Q 26
 SELECT contactFirstName as NOME, contactLastName as APELIDO, creditLimit as Limite_Credito, creditLimit * 0.80 as Menos_20_Porcento_Credito
 FROM customers;
 
 #Q 27
 #SELECT DISTINCT employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo
 SELECT DISTINCT jobTitle
 FROM employees;
 
 #Q 28
 SELECT DISTINCT country, city
 FROM customers;
 
 #Q 29
 SELECT COUNT(*)
 FROM customers;
 
 #Q 29-1
 SELECT DISTINCT country, COUNT(*)
 FROM customers
 WHERE country IN ('France');
 
 #Q 29-2
 SELECT COUNT(DISTINCT country)
 FROM customers;
 
 SELECT date_format(orderDate,'%d %Y') 
 FROM orders LIMIT 1;
 
 #Q 30
 SELECT customerName as Cliente, CONCAT(contactFirstName," ",contactLastName) as "Nome de Contacto" #, phone as Telemovel
 FROM customers;
 
 #Q 31 substr(contactFirstName,1), left(contactFirstName,1)
 SELECT customerName as Cliente, UPPER(CONCAT(substr(contactFirstName, 1,1),". ", contactLastName)) as "Nome de Contacto"
 FROM customers;
 
 #Q 32
 SELECT REPLACE(productName,"Ford","BMW") as "Substituir palavra Ford por BMW"
 FROM products
 WHERE productName 
 LIKE ('%Ford%');
 
 #Q 33 
 SELECT productDescription, LENGTH(productDescription) as "Tamanho do texto"
 FROM products;

 #Q 34
 SELECT SUBSTRING(productName, 1,4) as  "4 Letras Iniciais do Nome"
 FROM products
 WHERE productName LiKe '19%' or productName LiKe '2%';
 
 #Q 35
 SELECT *
 FROM orders
 WHERE DATE(orderDate) = '2005-01-20';
 
 #Q 36
 SELECT *
 FROM orders
 WHERE YEAR(orderDate)  = '2005' AND MONTH(orderDate) = '01';
 
 #Q 37
 SELECT *
 FROM orders
 WHERE shippedDate >= requiredDate;
 
 #Q 38 Media
 SELECT AVG(datediff(shippedDate, orderDate)) AS 'Média' ,
		MAX(datediff(shippedDate, orderDate)) AS 'Máximo',
		MIN(datediff(shippedDate, orderDate)) AS 'Máximo'
 FROM orders
 #WHERE shippedDate >='2004-11-01' AND shippedDate <= '2004-11-31';
 WHERE shippedDate like '2004-11-%';
 
 #Q 39
 SELECT *
 FROM orders
 WHERE shippedDate is NULL;
 
 #Q 40
 SELECT productCode as "Código do Produto", productName as "Nome do Produto", textDescription as "Descrição"
 FROM products t1
 INNER JOIN productlines t2
 ON t1.productLine = t2.productLine;
 
#Q 41
SELECT *
FROM payments
INNER JOIN customers on payments.customerNumber = customers.customerNumber;
 
 #Q 42
 SELECT *
 FROM customers INNER JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber;
 
 #Q 43
 SELECT orderdetails.*, productlines, textDescription
 FROM orderdetails INNER JOIN products INNER JOIN productlines
 ON orderdetails = products.productLine, productLine.textDescription;
 
 
 