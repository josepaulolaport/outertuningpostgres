/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1992-01-11' AND L_SHIPDATE < dateadd(mm, 3, cast('1992-01-11' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1992-01-11' AND L_SHIPDATE < dateadd(mm, 3, cast('1992-01-11' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-04-29' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-04-29' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-04-29' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-04-29' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1993-08-16' AND L_SHIPDATE < dateadd(mm, 3, cast('1993-08-16' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1993-08-16' AND L_SHIPDATE < dateadd(mm, 3, cast('1993-08-16' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1995-03-07' AND L_SHIPDATE < dateadd(mm, 3, cast('1995-03-07' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1995-03-07' AND L_SHIPDATE < dateadd(mm, 3, cast('1995-03-07' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-02-24' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-02-24' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-02-24' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-02-24' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1997-02-17' AND L_SHIPDATE < dateadd(mm, 3, cast('1997-02-17' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1997-02-17' AND L_SHIPDATE < dateadd(mm, 3, cast('1997-02-17' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1993-01-04' AND L_SHIPDATE < dateadd(mm, 3, cast('1993-01-04' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1993-01-04' AND L_SHIPDATE < dateadd(mm, 3, cast('1993-01-04' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1994-06-18' AND L_SHIPDATE < dateadd(mm, 3, cast('1994-06-18' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1994-06-18' AND L_SHIPDATE < dateadd(mm, 3, cast('1994-06-18' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-09-24' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-09-24' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-09-24' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-09-24' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-02-25' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-02-25' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-02-25' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-02-25' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-09-07' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-09-07' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-09-07' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-09-07' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1994-03-02' AND L_SHIPDATE < dateadd(mm, 3, cast('1994-03-02' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1994-03-02' AND L_SHIPDATE < dateadd(mm, 3, cast('1994-03-02' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1997-08-24' AND L_SHIPDATE < dateadd(mm, 3, cast('1997-08-24' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1997-08-24' AND L_SHIPDATE < dateadd(mm, 3, cast('1997-08-24' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-05-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-05-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-05-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-05-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1993-07-25' AND L_SHIPDATE < dateadd(mm, 3, cast('1993-07-25' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1993-07-25' AND L_SHIPDATE < dateadd(mm, 3, cast('1993-07-25' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1998-02-26' AND L_SHIPDATE < dateadd(mm, 3, cast('1998-02-26' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1998-02-26' AND L_SHIPDATE < dateadd(mm, 3, cast('1998-02-26' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1992-11-29' AND L_SHIPDATE < dateadd(mm, 3, cast('1992-11-29' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1992-11-29' AND L_SHIPDATE < dateadd(mm, 3, cast('1992-11-29' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1998-05-08' AND L_SHIPDATE < dateadd(mm, 3, cast('1998-05-08' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1998-05-08' AND L_SHIPDATE < dateadd(mm, 3, cast('1998-05-08' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1992-10-21' AND L_SHIPDATE < dateadd(mm, 3, cast('1992-10-21' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1992-10-21' AND L_SHIPDATE < dateadd(mm, 3, cast('1992-10-21' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1997-11-25' AND L_SHIPDATE < dateadd(mm, 3, cast('1997-11-25' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1997-11-25' AND L_SHIPDATE < dateadd(mm, 3, cast('1997-11-25' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1995-01-29' AND L_SHIPDATE < dateadd(mm, 3, cast('1995-01-29' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1995-01-29' AND L_SHIPDATE < dateadd(mm, 3, cast('1995-01-29' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-07-15' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-07-15' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;
/* TPC_H Query 15 */ SELECT S_SUPPKEY, S_NAME, S_ADDRESS, S_PHONE, T.TOTAL FROM SUPPLIER, (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-09-22' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-09-22' AS date)) GROUP BY L_SUPPKEY) AS T WHERE S_SUPPKEY = T.L_SUPPKEY AND T.TOTAL = (SELECT MAX(S.TOTAL) FROM (SELECT L_SUPPKEY, SUM(L_EXTENDEDPRICE*(1-L_DISCOUNT)) AS TOTAL FROM LINEITEM WHERE L_SHIPDATE >= '1996-09-22' AND L_SHIPDATE < dateadd(mm, 3, cast('1996-09-22' AS date)) GROUP BY L_SUPPKEY) AS S) ORDER BY S_SUPPKEY;;