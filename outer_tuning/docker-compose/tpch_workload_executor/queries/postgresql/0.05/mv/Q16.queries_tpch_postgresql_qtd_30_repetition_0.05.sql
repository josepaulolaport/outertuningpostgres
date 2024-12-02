/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#32' AND P_TYPE NOT ILIKE '%ECONOMY ANODIZED COPPER%' AND P_SIZE IN (50, 33, 17, 28, 7, 41, 30, 33) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%regular%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#22' AND P_TYPE NOT ILIKE '%SMALL POLISHED NICKEL%' AND P_SIZE IN (19, 28, 26, 29, 42, 27, 44, 40) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%ironic%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%ECONOMY ANODIZED STEEL%' AND P_SIZE IN (29, 8, 6, 36, 24, 28, 50, 38) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%quickly%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#43' AND P_TYPE NOT ILIKE '%LARGE BURNISHED BRASS%' AND P_SIZE IN (35, 17, 20, 36, 38, 33, 38, 31) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%accounts%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#35' AND P_TYPE NOT ILIKE '%ECONOMY ANODIZED STEEL%' AND P_SIZE IN (22, 40, 44, 17, 23, 9, 20, 7) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%to%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#55' AND P_TYPE NOT ILIKE '%SMALL PLATED NICKEL%' AND P_SIZE IN (39, 42, 44, 31, 18, 16, 14, 29) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%wake%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#42' AND P_TYPE NOT ILIKE '%LARGE PLATED STEEL%' AND P_SIZE IN (35, 7, 33, 48, 47, 5, 50, 3) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%deposits%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#43' AND P_TYPE NOT ILIKE '%LARGE POLISHED COPPER%' AND P_SIZE IN (20, 27, 48, 9, 33, 25, 37, 31) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%haggle%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#12' AND P_TYPE NOT ILIKE '%MEDIUM ANODIZED TIN%' AND P_SIZE IN (29, 34, 17, 38, 16, 18, 7, 48) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%deposits%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#22' AND P_TYPE NOT ILIKE '%MEDIUM BURNISHED COPPER%' AND P_SIZE IN (1, 15, 13, 8, 21, 14, 19, 25) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%to%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#31' AND P_TYPE NOT ILIKE '%ECONOMY BRUSHED COPPER%' AND P_SIZE IN (45, 14, 31, 39, 44, 40, 30, 42) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%accounts%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#13' AND P_TYPE NOT ILIKE '%SMALL ANODIZED COPPER%' AND P_SIZE IN (20, 24, 20, 14, 27, 9, 33, 21) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%final%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#22' AND P_TYPE NOT ILIKE '%SMALL PLATED NICKEL%' AND P_SIZE IN (35, 43, 43, 48, 24, 50, 20, 22) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%deposits%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%MEDIUM ANODIZED TIN%' AND P_SIZE IN (13, 38, 26, 15, 41, 14, 27, 33) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%the%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#42' AND P_TYPE NOT ILIKE '%ECONOMY BURNISHED TIN%' AND P_SIZE IN (28, 50, 27, 25, 29, 9, 33, 24) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%pinto%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#32' AND P_TYPE NOT ILIKE '%ECONOMY ANODIZED COPPER%' AND P_SIZE IN (50, 33, 17, 28, 7, 41, 30, 33) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%regular%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#23' AND P_TYPE NOT ILIKE '%MEDIUM BRUSHED BRASS%' AND P_SIZE IN (12, 3, 5, 24, 27, 38, 24, 31) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%blithely%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#24' AND P_TYPE NOT ILIKE '%LARGE PLATED STEEL%' AND P_SIZE IN (21, 31, 17, 31, 37, 40, 27, 19) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%express%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#33' AND P_TYPE NOT ILIKE '%ECONOMY BURNISHED TIN%' AND P_SIZE IN (5, 38, 44, 32, 44, 28, 31, 21) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%to%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#35' AND P_TYPE NOT ILIKE '%LARGE PLATED STEEL%' AND P_SIZE IN (2, 25, 47, 36, 26, 24, 26, 8) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%pinto%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#13' AND P_TYPE NOT ILIKE '%MEDIUM BRUSHED BRASS%' AND P_SIZE IN (47, 37, 12, 30, 48, 29, 24, 33) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%requests%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#54' AND P_TYPE NOT ILIKE '%SMALL POLISHED NICKEL%' AND P_SIZE IN (9, 26, 35, 46, 28, 13, 1, 26) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%wake%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#52' AND P_TYPE NOT ILIKE '%PROMO POLISHED BRASS%' AND P_SIZE IN (37, 50, 11, 6, 10, 5, 46, 7) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%carefully%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#54' AND P_TYPE NOT ILIKE '%SMALL POLISHED NICKEL%' AND P_SIZE IN (25, 50, 2, 37, 34, 50, 13, 7) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%wake%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#31' AND P_TYPE NOT ILIKE '%PROMO POLISHED BRASS%' AND P_SIZE IN (47, 39, 13, 49, 43, 14, 41, 20) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%unusual%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#13' AND P_TYPE NOT ILIKE '%PROMO PLATED TIN%' AND P_SIZE IN (30, 20, 36, 31, 40, 46, 2, 40) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%regular%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#21' AND P_TYPE NOT ILIKE '%LARGE BURNISHED BRASS%' AND P_SIZE IN (2, 49, 22, 1, 5, 37, 40, 16) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%final%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#13' AND P_TYPE NOT ILIKE '%LARGE POLISHED COPPER%' AND P_SIZE IN (20, 6, 6, 36, 1, 13, 9, 23) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%special%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#21' AND P_TYPE NOT ILIKE '%MEDIUM BURNISHED COPPER%' AND P_SIZE IN (42, 25, 6, 42, 45, 18, 18, 48) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%the%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#15' AND P_TYPE NOT ILIKE '%MEDIUM POLISHED NICKEL%' AND P_SIZE IN (20, 49, 16, 31, 10, 8, 35, 38) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%pending%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;