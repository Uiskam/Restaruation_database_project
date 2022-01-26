--ustawia UnitPrice w OrderDetails na wartości zgodne z tymi w Warhouse
DROP TRIGGER trgOrderDetailPriceSync


--wstawia klientowi zniżke stałego klienta jezeli takowa się należy
DROP TRIGGER trgRegularCustomerDiscount



--wstawia klientowi zniżke jednorazową jezeli takowa się mu należy
DROP TRIGGER trgSingleUseDiscount


--ustawia dobra datę w disoucnts
DROP TRIGGER trgSetUntil


--sprawdza czy użyto zniżke
DROP TRIGGER trgCheckDiscountUse


--sprawdzanie warunków menu
DROP TRIGGER trgMaxTwoWeeksMenu
CREATE TRIGGER trgMaxTwoWeeksMenu
    ON OrderDetails
    AFTER INSERT
    AS
BEGIN
    SELECT 'non'
    --EXECUTE tmp
    --DECLARE @twoWeeksOrOlder INT, @allDishes INT;
    --SET @twoWeeksOrOlder = 0;
    --SET @allDishes = 0;

    --PRINT ('CHUJ KURWA 0')
    /*SELECT MealID FROM Menu

    SELECT @allDishes = @@ROWCOUNT

    SELECT MealID FROM Menu WHERE DATEDIFF(day, Menu.SinceDate, GETDATE()) >= 13 --13 bo robimy to dzień przed

    SELECT @twoWeeksOrOlder = @@ROWCOUNT
    PRINT ('CHUJ KURWA 1')
    IF 2 * @twoWeeksOrOlder >= @allDishes
        BEGIN
            PRINT ('I don t know how to delete dishes from the Menu but you motherfuckers definitely should!')
            SELECT MealID FROM Menu WHERE DATEDIFF(day, Menu.SinceDate, GETDATE()) >= 13 --13 bo robimy to dzień przed
        END
    ELSE
        BEGIN
            PRINT ('Good job motherfuckers, everything on point, how unusual')
            SELECT MealID FROM Menu WHERE DATEDIFF(day, Menu.SinceDate, GETDATE()) >= 13 --13 bo robimy to dzień przed
        END*/
END
GO

--

DROP TRIGGER trgSeafoodEarlyEnough




DROP TRIGGER trgSeafoodForDay


--2
DROP TRIGGER trgCanReservate


--3
DROP TRIGGER trgEnoughSeats


--4
DROP TRIGGER trgSeafoodEarlyEnough



--5
DROP TRIGGER trgSeafoodForDay

