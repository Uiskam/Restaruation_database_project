--PROCEDURA: zwraca wszystkie obecnie dostępne discounty danego klienta, arg: clientID, zwraca: widok, jeśli klient nie istnieje albo jest nullem to info o błędzie, może wywołać kelner
DROP PROCEDURE uspAllClientDiscounts


/* SPRAWDZANIE WARUNKU ZMIANY POŁOWY DAŃ CO 2TYG. ->
typ: DML (insert),
warunek aktywacji : wprowadzenie (insert) nowego zamówienia,
co robi: zlicza czy ponad połowa menu jest na liście dłużej niż 2tyg - 1 dzień., a potem wypisuje wszystkie pozycje starsze niz 2tyg. - 1 dzień*/

DROP PROCEDURE uspMaxTwoWeeksMenu

