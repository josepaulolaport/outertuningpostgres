/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1997-05-31' AND o_orderdate < date '1997-05-31' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'EUROPE' AND o_orderdate >= date '1994-05-16' AND o_orderdate < date '1994-05-16' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1992-12-02' AND o_orderdate < date '1992-12-02' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1997-08-15' AND o_orderdate < date '1997-08-15' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1996-09-16' AND o_orderdate < date '1996-09-16' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AMERICA' AND o_orderdate >= date '1993-05-19' AND o_orderdate < date '1993-05-19' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1994-12-11' AND o_orderdate < date '1994-12-11' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1997-04-22' AND o_orderdate < date '1997-04-22' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AMERICA' AND o_orderdate >= date '1994-01-30' AND o_orderdate < date '1994-01-30' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1997-10-31' AND o_orderdate < date '1997-10-31' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1996-03-09' AND o_orderdate < date '1996-03-09' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'EUROPE' AND o_orderdate >= date '1992-12-10' AND o_orderdate < date '1992-12-10' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1995-02-09' AND o_orderdate < date '1995-02-09' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1998-04-12' AND o_orderdate < date '1998-04-12' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1994-10-29' AND o_orderdate < date '1994-10-29' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'EUROPE' AND o_orderdate >= date '1997-09-22' AND o_orderdate < date '1997-09-22' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AMERICA' AND o_orderdate >= date '1996-12-20' AND o_orderdate < date '1996-12-20' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1994-12-11' AND o_orderdate < date '1994-12-11' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'EUROPE' AND o_orderdate >= date '1996-05-20' AND o_orderdate < date '1996-05-20' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1995-03-03' AND o_orderdate < date '1995-03-03' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1993-08-13' AND o_orderdate < date '1993-08-13' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1993-09-21' AND o_orderdate < date '1993-09-21' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1992-03-25' AND o_orderdate < date '1992-03-25' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1993-11-03' AND o_orderdate < date '1993-11-03' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1997-07-13' AND o_orderdate < date '1997-07-13' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'MIDDLE EAST' AND o_orderdate >= date '1993-07-10' AND o_orderdate < date '1993-07-10' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'EUROPE' AND o_orderdate >= date '1998-04-30' AND o_orderdate < date '1998-04-30' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'AFRICA' AND o_orderdate >= date '1995-03-02' AND o_orderdate < date '1995-03-02' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'EUROPE' AND o_orderdate >= date '1998-01-23' AND o_orderdate < date '1998-01-23' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
/* TPC_H Query 5 */ SELECT n_name, sum(revenue) AS revenue FROM mv_tap_q5 WHERE c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_suppkey = s_suppkey AND c_nationkey = s_nationkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name = 'ASIA' AND o_orderdate >= date '1998-03-28' AND o_orderdate < date '1998-03-28' + interval '1' year GROUP BY n_name ORDER BY revenue DESC;;
