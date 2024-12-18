/*
Insert at least 5 rows data in each table via SQL statements. 
Write SELECT * for each table and do a SNIP or screen shot that shows your tables.
*/


-- GUESTs
INSERT INTO GUEST VALUES('0000001', 'Angel Apellido', 3);
INSERT INTO GUEST VALUES('0000002', 'Paula Ramos', 2);
INSERT INTO GUEST VALUES('0000003', 'William George', 1);
INSERT INTO GUEST VALUES('0000004', 'Benny Barnes', 4);
INSERT INTO GUEST VALUES('0000005', 'Tiffany Li', 1);

-- ROOMs
INSERT INTO ROOM VALUES(101, 100, 'Single Queen', 'Y', 2);
INSERT INTO ROOM VALUES(202, 150, 'Single King', 'N', 2);
INSERT INTO ROOM VALUES(303, 200, 'Double Queen', 'N', 4);
INSERT INTO ROOM VALUES(404, 250, 'Double King', 'Y', 4);
INSERT INTO ROOM VALUES(505, 500, 'Penthouse', 'Y', 6);

-- EMPLOYEEs
INSERT INTO EMPLOYEE VALUES('1000001', 'Ydalis Zamora', 23);
INSERT INTO EMPLOYEE VALUES('1000002', 'Frederico Berryfaz', 12);
INSERT INTO EMPLOYEE VALUES('1000003', 'Oscar Init', 1);
INSERT INTO EMPLOYEE VALUES('1000004', 'William Werm', 15);
INSERT INTO EMPLOYEE VALUES('1000005', 'JG Quintel', 96);

/* RESERVES (requires ROOM and GUEST) */
-- William's Room, 3 day penthouse stay
INSERT INTO RESERVES 
VALUES(123, '0000003', 505, 
        TO_DATE('2024-11-22 15:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_DATE('2024-11-25 07:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_DATE('2024-11-09 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1500);

-- Angel's Room, 4 day double king stay
INSERT INTO RESERVES 
VALUES(124, '0000001', 404, 
        TO_DATE('2024-11-22 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
        TO_DATE('2024-11-26 07:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_DATE('2024-11-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1000);

-- Benny's Room, 2 day double queen stay
INSERT INTO RESERVES 
VALUES(125, '0000004', 303, 
        TO_DATE('2024-11-22 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
        TO_DATE('2024-11-24 07:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_DATE('2024-11-11 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 400);

-- Tiffany's Room, 5 day single king stay
INSERT INTO RESERVES 
VALUES(126, '0000005', 202, 
        TO_DATE('2024-11-22 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
        TO_DATE('2024-11-28 07:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_DATE('2024-11-12 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 750);

-- Paula's Room, 1 day single queen stay
INSERT INTO RESERVES 
VALUES(127, '0000002', 101, 
        TO_DATE('2024-11-22 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
        TO_DATE('2024-11-23 07:00:00', 'YYYY-MM-DD HH24:MI:SS'),
        TO_DATE('2024-11-13 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 100);

-- SERVICEs
INSERT INTO SERVICE VALUES ('L00001', 'Laundry', 'N');
INSERT INTO Laundry VALUES ('L00001', 'Dry Cleaning');
INSERT INTO REQUESTS VALUES ('000001', TO_DATE('2024-11-22 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                                0, '0000003', '1000003', 'L00001');

INSERT INTO SERVICE VALUES ('B00001', 'Business', 'Y');
INSERT INTO Business VALUES ('B00001', 403, TO_DATE('2024-11-23 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                                TO_DATE('2024-11-23 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO REQUESTS VALUES ('000002', TO_DATE('2024-11-23 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                                10, '0000003', '1000002', 'B00001');

INSERT INTO SERVICE VALUES ('T00001', 'TravelDesk', 'N');
INSERT INTO TravelDesk VALUES ('T00001', 'Mount Everest', TO_DATE('2024-11-23, 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO REQUESTS VALUES ('000003', TO_DATE('2024-11-22 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                                50, '0000005', '1000005', 'L00001');

INSERT INTO SERVICE VALUES ('R00001', 'RentDevice', 'Y');
INSERT INTO RentDevice VALUES ('R00001', 'Laptop', TO_DATE('2024-11-23 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                                TO_DATE('2024-11-26 07:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO REQUESTS VALUES ('000004', TO_DATE('2024-11-22 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                                80, '0000001', '1000001', 'R00001');

INSERT INTO SERVICE VALUES ('L00002', 'Laundry', 'N');
INSERT INTO Laundry VALUES ('L00002', 'Basic');
INSERT INTO REQUESTS VALUES ('000005', TO_DATE('2024-11-23 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
                        0, '0000004', '1000003', 'L00002');

-- SELECT QUERIES FOR EACH TABLE
SELECT * FROM ROOM;
SELECT * FROM GUEST;
SELECT * FROM EMPLOYEE;
SELECT * FROM RESERVES;
SELECT * FrOM REQUESTS;
