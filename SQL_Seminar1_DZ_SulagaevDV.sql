-- 1. В каких странах проживают наши клиенты (таблица Customers)? Сколько уникальных стран вы получили в ответе?
SELECT DISTINCT Country FROM Customers;
-- в ответе получил список из 21 уникальной страны

--2.Сколько клиентов проживает в Argentina?
SELECT COUNT(Country) AS residents_of_Argentina FROM Customers
WHERE Country = "Argentina"; 
--количество проживающих в Аргентине - 3

--3. Посчитайте среднюю цену и количество товаров в 8 категории (таблица Products). Найдите количество товаров в 8 категории
SELECT COUNT(ProductID) AS count_Products, AVG(Price) AS averagePrice FROM Products
WHERE CategoryID = 8; 
--количество товаров - 12, средняя цена - 20.6825

--4. Посчитайте средний возраст работников (таблица Employees)
SELECT '2024-10-19' - AVG(BirthDate) AS AverageAge
FROM Employees;
-- ответ - 66.6

/*5 Вам необходимо получить заказы, которые сделаны в течении 35 дней до даты 2023-10-10 (то есть с 5
сентября до 10 октября включительно). Использовать функцию DATEDIFF, определить переменные для
даты и диапазона. */
--DATEDIFF в DBeaver не работает, поэтому использовал BETWEEN:
SELECT * FROM Orders
WHERE OrderDate BETWEEN '2023-09-05' AND '2023-10-10'
ORDER BY OrderDate
LIMIT 1;
--CustomerID = 37

/* Вам необходимо получить количество заказов за сентябрь месяц (тремя способами, через LIKE, с
помощью YEAR и MONTH и сравнение начальной и конечной даты).*/
SELECT COUNT(*) AS count_orders FROM Orders
WHERE OrderDate LIKE '2023-09-%'
ORDER BY OrderDate;
-- ответ: 23





