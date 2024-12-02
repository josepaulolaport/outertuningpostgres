/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('SHIP', 'RAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1994-08-25' AND l_receiptdate < date '1994-08-25' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('SHIP', 'MAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1997-02-03' AND l_receiptdate < date '1997-02-03' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('TRUCK', 'AIR') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1995-10-01' AND l_receiptdate < date '1995-10-01' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'REG AIR') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1994-05-18' AND l_receiptdate < date '1994-05-18' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('REG AIR', 'RAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1995-10-29' AND l_receiptdate < date '1995-10-29' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('FOB', 'MAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1992-12-03' AND l_receiptdate < date '1992-12-03' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('MAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1993-02-17' AND l_receiptdate < date '1993-02-17' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('FOB', 'FOB') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1994-06-01' AND l_receiptdate < date '1994-06-01' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('TRUCK', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1995-12-13' AND l_receiptdate < date '1995-12-13' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('MAIL', 'RAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1998-07-12' AND l_receiptdate < date '1998-07-12' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'RAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1993-09-30' AND l_receiptdate < date '1993-09-30' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('SHIP', 'FOB') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1995-08-26' AND l_receiptdate < date '1995-08-26' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('REG AIR', 'FOB') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-05-09' AND l_receiptdate < date '1996-05-09' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('RAIL', 'TRUCK') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1996-11-22' AND l_receiptdate < date '1996-11-22' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('MAIL', 'SHIP') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1993-11-18' AND l_receiptdate < date '1993-11-18' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
/* TPC_H Query 12 */ SELECT l_shipmode, sum(high_line_count) AS high_line_count, sum(low_line_count) AS low_line_count FROM mv_tap_q12 WHERE o_orderkey = l_orderkey AND l_shipmode in ('FOB', 'MAIL') AND l_commitdate < l_receiptdate AND l_shipdate < l_commitdate AND l_receiptdate >= date '1993-11-08' AND l_receiptdate < date '1993-11-08' + interval '1' year GROUP BY l_shipmode ORDER BY l_shipmode;;
