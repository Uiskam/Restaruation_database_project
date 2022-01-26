--w Orders: orderID, nieklastrowy
CREATE NONCLUSTERED INDEX OrdersInd
ON Orders(CustomerID,EmployeeID,WhenOrdered);

--w Employees: Employee ID, klastrowy
CREATE CLUSTERED INDEX EmployeesInd
ON Employees(EmployeeID);

--w Menu : mealID, klastrowy
CREATE CLUSTERED INDEX MenuInd
ON Menu(MealID);

--w Customers: customer ID, klastrowy
CREATE CLUSTERED INDEX CustomersInd
ON Customers(CustomerID);

--w Currencies: CurrencyName, klastrowy
CREATE CLUSTERED INDEX CurrenciesInd
ON Currencies(CurrencyName);

--w Warehousie: MealID, UnitPrice, nieklastrowy
CREATE NONCLUSTERED INDEX WarehouseInd
ON Warehouse(MealID, UnitPrice);

--przykładowe wyłączenie
ALTER INDEX OrdersInd ON Orders DISABLE;

-- i usuwanie indeksu bo pewnie się przyda
DROP INDEX OrdersInd ON Orders;



