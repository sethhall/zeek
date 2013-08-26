#
# @TEST-GROUP: sqlite
#
# @TEST-EXEC: cat conn.sql | sqlite3 conn.sqlite
# @TEST-EXEC: btest-bg-run bro bro -b %INPUT
# @TEST-EXEC: btest-bg-wait 10
# @TEST-EXEC: btest-diff out

@TEST-START-FILE conn.sql
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE conn (
'ts' double precision,
'uid' text,
'id.orig_h' text,
'id.orig_p' integer,
'id.resp_h' text,
'id.resp_p' integer,
'proto' text,
'service' text,
'duration' double precision,
'orig_bytes' integer,
'resp_bytes' integer,
'conn_state' text,
'local_orig' boolean,
'missed_bytes' integer,
'history' text,
'orig_pkts' integer,
'orig_ip_bytes' integer,
'resp_pkts' integer,
'resp_ip_bytes' integer,
'tunnel_parents' text
);
INSERT INTO "conn" VALUES(1.30047516709653496744e+09,'dnGM1AdIVyh','141.142.220.202',5353,'224.0.0.251',5353,'udp','dns',NULL,NULL,NULL,'S0',NULL,0,'D',1,73,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047516709701204296e+09,'fv9q7WjEgp1','fe80::217:f2ff:fed7:cf65',5353,'ff02::fb',5353,'udp',NULL,NULL,NULL,NULL,'S0',NULL,0,'D',1,199,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047516709981608392e+09,'0Ox0H56yl88','141.142.220.50',5353,'224.0.0.251',5353,'udp',NULL,NULL,NULL,NULL,'S0',NULL,0,'D',1,179,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885389900212e+09,'rvmSc7rDQub','141.142.220.118',43927,'141.142.2.2',53,'udp','dns',4.351139068603515625e-04,38,89,'SF',NULL,0,'Dd',1,66,1,117,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885437798497e+09,'ogkztouSArh','141.142.220.118',37676,'141.142.2.2',53,'udp','dns',4.20093536376953125e-04,52,99,'SF',NULL,0,'Dd',1,80,1,127,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885483694076e+09,'0UIDdXFt7Tb','141.142.220.118',40526,'141.142.2.2',53,'udp','dns',3.9196014404296875e-04,38,183,'SF',NULL,0,'Dd',1,66,1,211,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885795593258e+09,'WqFYV51UIq7','141.142.220.118',32902,'141.142.2.2',53,'udp','dns',3.17096710205078125e-04,38,89,'SF',NULL,0,'Dd',1,66,1,117,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885830593104e+09,'ylcqZpbz6K2','141.142.220.118',59816,'141.142.2.2',53,'udp','dns',3.430843353271484375e-04,52,99,'SF',NULL,0,'Dd',1,80,1,127,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885871291159e+09,'blhldTzA7Y6','141.142.220.118',59714,'141.142.2.2',53,'udp','dns',3.750324249267578125e-04,38,183,'SF',NULL,0,'Dd',1,66,1,211,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889164400098e+09,'Sc34cGJo3Kg','141.142.220.118',58206,'141.142.2.2',53,'udp','dns',3.39031219482421875e-04,38,89,'SF',NULL,0,'Dd',1,66,1,117,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889203691487e+09,'RzvFrfXSRfk','141.142.220.118',38911,'141.142.2.2',53,'udp','dns',3.349781036376953125e-04,52,99,'SF',NULL,0,'Dd',1,80,1,127,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889241409298e+09,'GaaFI58mpbe','141.142.220.118',59746,'141.142.2.2',53,'udp','dns',4.208087921142578125e-04,38,183,'SF',NULL,0,'Dd',1,66,1,211,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889398789407e+09,'tr7M6tvAIQa','141.142.220.118',45000,'141.142.2.2',53,'udp','dns',3.840923309326171875e-04,38,89,'SF',NULL,0,'Dd',1,66,1,117,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889442205426e+09,'gV0TcSc2pb4','141.142.220.118',48479,'141.142.2.2',53,'udp','dns',3.168582916259765625e-04,52,99,'SF',NULL,0,'Dd',1,80,1,127,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889478707315e+09,'MOG0z4PYOhk','141.142.220.118',48128,'141.142.2.2',53,'udp','dns',4.22954559326171875e-04,38,183,'SF',NULL,0,'Dd',1,66,1,211,'(empty)');
INSERT INTO "conn" VALUES(1.30047516890174889565e+09,'PlehgEduUyj','141.142.220.118',56056,'141.142.2.2',53,'udp','dns',4.022121429443359375e-04,36,131,'SF',NULL,0,'Dd',1,64,1,159,'(empty)');
INSERT INTO "conn" VALUES(1.30047516890219497676e+09,'4eZgk09f2Re','141.142.220.118',55092,'141.142.2.2',53,'udp','dns',3.740787506103515625e-04,36,198,'SF',NULL,0,'Dd',1,64,1,226,'(empty)');
INSERT INTO "conn" VALUES(1.30047516989943790432e+09,'3xwJPc7mQ9a','141.142.220.44',5353,'224.0.0.251',5353,'udp','dns',NULL,NULL,NULL,'S0',NULL,0,'D',1,85,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047517086238408089e+09,'yxTcvvTKWQ4','141.142.220.226',137,'141.142.220.255',137,'udp','dns',2.61301684379577636718e+00,350,0,'S0',NULL,0,'D',7,546,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047517167537188525e+09,'8bLW3XNfhCj','fe80::3074:17d5:2052:c324',65373,'ff02::1:3',5355,'udp','dns',1.00096225738525390625e-01,66,0,'S0',NULL,0,'D',2,162,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047517167708110807e+09,'rqjhiiRPjEe','141.142.220.226',55131,'224.0.0.252',5355,'udp','dns',1.00020885467529296875e-01,66,0,'S0',NULL,0,'D',2,122,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047517311674904827e+09,'hTPyfL3QSGa','fe80::3074:17d5:2052:c324',54213,'ff02::1:3',5355,'udp','dns',9.980106353759765625e-02,66,0,'S0',NULL,0,'D',2,162,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047517311736202235e+09,'EruUQ9AJRj4','141.142.220.226',55671,'224.0.0.252',5355,'udp','dns',9.98489856719970703125e-02,66,0,'S0',NULL,0,'D',2,122,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047517315367889406e+09,'sw1bKJOMjuk','141.142.220.238',56641,'141.142.220.255',137,'udp','dns',NULL,NULL,NULL,'S0',NULL,0,'D',1,78,0,0,'(empty)');
INSERT INTO "conn" VALUES(1.30047516872400689127e+09,'NPHCuyWykE7','141.142.220.118',48649,'208.80.152.118',80,'tcp','http',1.19904994964599609375e-01,525,232,'S1',NULL,0,'ShADad',4,741,3,396,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889293599126e+09,'VapPqRhPgJ4','141.142.220.118',50000,'208.80.152.3',80,'tcp','http',2.29603052139282226562e-01,1148,734,'S1',NULL,0,'ShADad',6,1468,4,950,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885916304588e+09,'3607hh8C3bc','141.142.220.118',49998,'208.80.152.3',80,'tcp','http',2.15893030166625976562e-01,1130,734,'S1',NULL,0,'ShADad',6,1450,4,950,'(empty)');
INSERT INTO "conn" VALUES(1.30047516885530495647e+09,'tgYMrIvzDSg','141.142.220.118',49996,'208.80.152.3',80,'tcp','http',2.1850109100341796875e-01,1171,733,'S1',NULL,0,'ShADad',6,1491,4,949,'(empty)');
INSERT INTO "conn" VALUES(1.30047516889526700977e+09,'xQsjPwNBrXd','141.142.220.118',50001,'208.80.152.3',80,'tcp','http',2.27283954620361328125e-01,1178,734,'S1',NULL,0,'ShADad',6,1498,4,950,'(empty)');
INSERT INTO "conn" VALUES(1.30047516890263509747e+09,'Ap3GzMI1vM9','141.142.220.118',35642,'208.80.152.2',80,'tcp','http',1.200408935546875e-01,534,412,'S1',NULL,0,'ShADad',4,750,3,576,'(empty)');
INSERT INTO "conn" VALUES(1300475168.85533,'FTVcgrmNy52','141.142.220.118',49997,'208.80.152.3',80,'tcp','http',2.19720125198364257812e-01,1125,734,'S1',NULL,0,'ShADad',6,1445,4,950,'(empty)');
INSERT INTO "conn" VALUES(1.30047516978033089643e+09,'1xFx4PGdeq5','141.142.220.235',6705,'173.192.163.128',80,'tcp',NULL,NULL,NULL,NULL,'OTH',NULL,0,'h',0,0,1,48,'(empty)');
INSERT INTO "conn" VALUES(1.3004751686520030498e+09,'WIG1ud65z22','141.142.220.118',35634,'208.80.152.2',80,'tcp',NULL,6.1328887939453125e-02,463,350,'OTH',NULL,0,'DdA',2,567,1,402,'(empty)');
INSERT INTO "conn" VALUES(1.3004751688929131031e+09,'o2gAkl4V7sa','141.142.220.118',49999,'208.80.152.3',80,'tcp','http',2.20960855484008789062e-01,1137,733,'S1',NULL,0,'ShADad',6,1457,4,949,'(empty)');
COMMIT;
@TEST-END-FILE

@load base/protocols/conn

redef exit_only_after_terminate = T; 
redef Input::accept_unsupported_types = T;

global outfile: file;

module A;

event line(description: Input::EventDescription, tpe: Input::Event, r: Conn::Info)
	{
	print outfile, r;
	print outfile, |r$tunnel_parents|; # to make sure I got empty right
	}

event bro_init()
	{
	local config_strings: table[string] of string = {
		 ["query"] = "select * from conn;",
		 ["dbname"] = "conn"
	};

	outfile = open("../out");
	Input::add_event([$source="../conn", $name="conn", $fields=Conn::Info, $ev=line, $want_record=T, $reader=Input::READER_SQLITE, $config=config_strings]);
	}

event Input::end_of_data(name: string, source:string)
	{
	print outfile, "End of data";
	close(outfile);
	terminate();
	}
