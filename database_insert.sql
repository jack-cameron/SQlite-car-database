drop table if exists users;
drop table if exists garage;
drop table if exists cars_in_garage;
drop table if exists cars;
drop table if exists engine;

CREATE TABLE users(
    id text primary key not null,
    username text not null
);

CREATE TABLE garage(
    garage_id text not null,
    user_id text not null,
    PRIMARY KEY (garage_id, user_id)
);

CREATE TABLE cars_in_garage(
    car_in_garage_id text not null,
    g_id text not null,
    PRIMARY KEY (car_in_garage_id, g_id)
);

CREATE TABLE cars(
    car_id text primary key not null,
    make text not null,
    model text not null,
    drivetrain text not null, 
    colour text not null,
    year text not null,
    engine_name text not null,
    engine_type text not null
);

CREATE TABLE engine(
    car_id text not null,
    name text not null,
    hp integer,
    displacement text not null,
    type text not null,
    PRIMARY KEY (name, car_id)
);

INSERT into users VALUES('1001', 'jack cameron');
INSERT into users VALUES('1002', 'brian oconner');
INSERT into users VALUES('1003', 'dom toretto');
INSERT into users VALUES('1004', 'letty');
INSERT into users VALUES('1005', 'han lue');
INSERT into users VALUES('1006', 'tej parker');
INSERT into users VALUES('1007', 'roman pearce');
INSERT into users VALUES('1008', 'suki');
INSERT into users VALUES('1009', 'gisele yasher');
INSERT into users VALUES('1010', 'sean boswell');

INSERT into garage VALUES('G1','1001');
INSERT into garage VALUES('G2','1002');
INSERT into garage VALUES('G3','1003');
INSERT into garage VALUES('G4','1004');
INSERT into garage VALUES('G5','1005');
INSERT into garage VALUES('G6','1006');
INSERT into garage VALUES('G7','1007');
INSERT into garage VALUES('G8','1008');
INSERT into garage VALUES('G9','1009');
INSERT into garage VALUES('G10','1010');

INSERT INTO cars VALUES('001','Nissan','Skyline GTR R34','4WD','Midnight Purple','1999','RB26','Inline-6');
INSERT INTO cars VALUES('002','Honda','Civic Type R','FWD','Phoenix Yellow','2021','K20C1','Inline-4');
INSERT INTO cars VALUES('003','Mazda','RX7','RWD','Sunrise Red','1995','13B-REW','Twin-Rotary');
INSERT INTO cars VALUES('004','Dodge','Charger R/T','RWD','Jet Black','1970','HEMI','V8');
INSERT INTO cars VALUES('005','Ford','Mustang','RWD','Raven Black','1968','FE','V8');
INSERT INTO cars VALUES('006','Mitsubishi','Evolution VII','AWD','White','2002','4G63','Inline-4');
INSERT INTO cars VALUES('007','Mitsubishi','Eclipse','AWD','Lime Green','1995','4G63','Inline-4');
INSERT INTO cars VALUES('008','Nissan','350Z','RWD','Silver Alloy','2006','VQ35DE','V6');
INSERT INTO cars VALUES('009','Subaru','Impreza WRX STI','AWD','Sky Blue Mettalic','2012','EJ25','Flat-4');
INSERT INTO cars VALUES('010','Nissan','240SX','RWD','Burgandy','1995','SR20DET','Inline-4');
INSERT INTO cars VALUES('011','Acura','NSX','RWD','New Formula Red','2000','C32B','V6');
INSERT INTO cars VALUES('012','Mitsubishi','Eclipse','FWD','Laker Purple','2003','6G72','V6');
INSERT INTO cars VALUES('013','Honda','S2000','RWD','Hot Pink','2001','F20C','Inline-4');
INSERT INTO cars VALUES('014','Mitsubishi','Evolution IX','AWD','Rally Red','2006','4G63','Inline-4');
INSERT INTO cars VALUES('015','Toyota','Supra','RWD','Orange','1994','2JZ-GTE','Inline-6');
INSERT INTO cars VALUES('016','Toyota','GT86','RWD','Bayside Blue','2019','FA20D','Flat-4');

INSERT INTO cars_in_garage VALUES('002','G1');
INSERT INTO cars_in_garage VALUES('001','G2');
INSERT INTO cars_in_garage VALUES('006','G2');
INSERT INTO cars_in_garage VALUES('009','G2');
INSERT INTO cars_in_garage VALUES('003','G5');
INSERT INTO cars_in_garage VALUES('004','G3');
INSERT INTO cars_in_garage VALUES('005','G1');
INSERT INTO cars_in_garage VALUES('007','G2');
INSERT INTO cars_in_garage VALUES('008','G9');
INSERT INTO cars_in_garage VALUES('010','G4');
INSERT INTO cars_in_garage VALUES('011','G6');
INSERT INTO cars_in_garage VALUES('012','G7');
INSERT INTO cars_in_garage VALUES('013','G8');
INSERT INTO cars_in_garage VALUES('014','G10');
INSERT INTO cars_in_garage VALUES('015','G2');
INSERT INTO cars_in_garage VALUES('016','G1');

INSERT INTO engine VALUES('001','RB26',276,'2.6L','Inline-6');
INSERT INTO engine VALUES('002','KC201',306,'2.0L','Inline-4');
INSERT INTO engine VALUES('003','13B-REW',255,'1.3L','Twin-Rotary');
INSERT INTO engine VALUES('004','HEMI',900,'7.0L','V8');
INSERT INTO engine VALUES('005','FE',325,'7.0L','V8');
INSERT INTO engine VALUES('006','4G63',276,'2.0L','Inline-4');
INSERT INTO engine VALUES('007','4G63',201,'2.0L','Inline-4');
INSERT INTO engine VALUES('008','VQ35DE',300,'3.5L','V6');
INSERT INTO engine VALUES('009','EJ25',305,'2.0L','Flat-4');
INSERT INTO engine VALUES('010','SR20DET',220,'2.0L','Inline-4');
INSERT INTO engine VALUES('011','C32B',290,'3.5L','V6');
INSERT INTO engine VALUES('012','6G72',210,'3.0L','V6');
INSERT INTO engine VALUES('013','F20C',247,'2.0L','Inline-4');
INSERT INTO engine VALUES('014','4G63',290,'2.0L','Inline-4');
INSERT INTO engine VALUES('015','2JZ-GTE',544,'3.0L','Inline-6');
INSERT INTO engine VALUES('016','FA20D',205,'2.0L','Flat-4')
