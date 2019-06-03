create table mytable (field1 timestamp);

insert into mytable values ('2016-02-23 12:01:30');

UPDATE mytable 
SET field1 = '2015-12-31'::timestamp + 
             EXTRACT(HOUR FROM field1) * INTERVAL '1 HOUR' +
             EXTRACT(MINUTE FROM field1) * INTERVAL '1 MINUTE' +
             EXTRACT(SECOND FROM field1) * INTERVAL '1 SECOND' 
