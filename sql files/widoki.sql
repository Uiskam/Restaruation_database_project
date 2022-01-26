--1
--Wyświetla pełną listę pracowników z ich podstawowymi danymi.
--Może go wyświetlić Manager.


--2
--Wyświetla wszystkie zamówienia z aktualnego dnia.
--Może go wyświetlić Manager i Chef.


--3


--4
--Wyświetla dzisiejsze menu oraz stan magazynu dla każdego wypisanego dania.
--Mogą go wyświetlić Manager oraz WarehouseManager.



--5
--Wyświetla wszystkie dania, których nie ma w magazynie.
--Może go wygenerować WarehouseManager.



--6
-- Wyświetla zamówienia do końca dnia, jeszcze nie przygotowane
-- Może go wyświetlić Chef




--7
--Wyświetla obecny stan magazynu.
--Może go wyświetlić: Manager, Chef oraz WarehouseManager.



--8
/*Wyświetla sumaryczną ilość kolumny seatsNeeded z relacji Orders, jeśli data i czas trwania zamówienia spełniają odp. warunki oraz sumę łącznej ilości miejsc stolików.
Może go wyświetlić Manager oraz Waiter*/



/*SELECT COUNT(TU.TableID) as OccupiedTables,TClassName ClassName, (
    SELECT COUNT(TableID)  FROM Tables AS T1
        WHERE T1.TClassID  = T.TClassID
        --GROUP BY T.TClassID
    )
    FROM TablesUsed TU
INNER JOIN Orders O ON TU.OrderID = O.OrderID
INNER JOIN Tables T ON T.TableID = TU.TableID
INNER JOIN TableClasses TC ON TC.TClassID = T.TClassID
WHERE DATEDIFF(mi,WhenToBeDone + CAST(ForHowLong AS DATETIME), GETDATE()) < 0 AND DATEDIFF(mi,WhenToBeDone, GETDATE()) > 0
GROUP BY  TClassName*/

