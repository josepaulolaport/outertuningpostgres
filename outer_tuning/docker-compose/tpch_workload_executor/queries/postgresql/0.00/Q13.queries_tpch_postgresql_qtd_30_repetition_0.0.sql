/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%deposits%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%unusual%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%requests%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%pending%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%deposits%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%accounts%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%to%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%deposits%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%special%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%the%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%accounts%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%even%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%carefully%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%regular%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%regular%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%haggle%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%regular%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%accounts%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%the%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%wake%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%slyly%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%ironic%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%packages%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%accounts%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%are%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%final%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%quickly%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%accounts%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%even%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(O_ORDERKEY) as count_orderkey FROM CUSTOMER LEFT OUTER JOIN ORDERS ON C_CUSTKEY = O_CUSTKEY AND O_COMMENT NOT LIKE '%%ironic%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
