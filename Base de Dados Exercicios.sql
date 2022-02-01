#Q 2 
SELECT firstName, lastName
FROM employees;

#Q 3
SELECT *
FROM employees;

#Q 4
SELECT *
FROM orderdetails;
#O objetivo desta query é obter todas as ordes registadas na tabela de ordens pedidas.

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
 FROM employees
 ORDER BY jobTitle DESC, email ASC;
 
 #Q 21

 SELECT customerName, productName, productLine
 FROM customers, products
 #INNER JOIN orders ON customers.customerNumber = orders.customerNumber;
 ORDER BY FIELD(productLine, 'Trucks and Buses', 'Classic Cars', 'Motorcycles');
 