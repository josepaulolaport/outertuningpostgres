/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('15', '26', '21', '31', '15', '20', '33') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('16', '22', '19', '29', '25', '31', '21') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('18', '12', '19', '25', '10', '34', '16') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '26', '26', '10', '21', '29', '12') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('34', '32', '11', '25', '23', '15', '10') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('33', '20', '26', '24', '13', '17', '27') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('22', '16', '24', '17', '34', '20', '14') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('31', '31', '15', '16', '10', '27', '17') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('21', '30', '24', '15', '28', '33', '23') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('10', '15', '32', '25', '19', '30', '12') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('13', '24', '21', '16', '31', '26', '31') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('21', '26', '17', '20', '24', '13', '26') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('25', '34', '16', '20', '28', '28', '22') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('14', '16', '28', '30', '11', '23', '34') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('31', '16', '31', '31', '20', '11', '32') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('10', '31', '18', '31', '26', '17', '29') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('21', '34', '10', '27', '34', '28', '24') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('25', '11', '24', '21', '14', '34', '10') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('15', '12', '25', '11', '31', '23', '23') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('30', '13', '31', '32', '11', '13', '24') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('34', '13', '20', '23', '26', '26', '20') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('34', '22', '21', '27', '18', '25', '31') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('16', '18', '29', '22', '32', '17', '25') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('12', '12', '27', '18', '18', '26', '30') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('27', '28', '31', '17', '11', '22', '16') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('19', '15', '20', '26', '34', '22', '29') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('14', '17', '31', '17', '27', '24', '10') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('33', '26', '32', '28', '31', '19', '20') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('17', '22', '26', '26', '15', '22', '11') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('19', '24', '16', '22', '13', '17', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '13', '34', '32', '34', '31', '32') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('28', '26', '34', '28', '21', '11', '15') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('16', '34', '14', '10', '20', '30', '13') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('17', '30', '22', '25', '29', '33', '20') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '20', '16', '18', '27', '17', '29') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('26', '23', '29', '15', '14', '15', '20') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('30', '25', '16', '15', '14', '16', '11') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('28', '28', '22', '33', '30', '19', '23') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('11', '18', '31', '18', '17', '19', '31') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('27', '27', '25', '21', '18', '32', '12') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('20', '26', '11', '27', '23', '33', '14') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('29', '25', '29', '21', '13', '34', '21') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('10', '15', '27', '27', '16', '33', '13') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('15', '19', '33', '31', '34', '14', '12') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
/* TPC_H Query 22 */ select cntrycode, count(*) numcust, sum(c_acctbal) totacctbal from ( select substr(c_phone , 0, 3) cntrycode, c_acctbal from customer where substr(c_phone , 0, 3) in ('28', '30', '21', '10', '12', '22', '21') and c_acctbal > ( select avg(avg_acctbal) avg_acctbal FROM mv_tap_q22 where c_acctbal > 0.00 and substr(c_phone , 0, 3) in ('20', '15', '20', '16', '32', '30', '28') ) and not exists ( select * from orders where o_custkey = c_custkey ) ) custsale group by cntrycode order by cntrycode;;
