prompt PL/SQL Developer import file
prompt Created on 2020-04-08 by ZhangZihan
set feedback off
set define off
prompt Creating DUTYPREMIUM...
create table DUTYPREMIUM
(
  transno                   VARCHAR2(35) not null,
  targetid                  VARCHAR2(2) not null,
  benchmarkdutypremium      VARCHAR2(15),
  adjusteddutypremium       VARCHAR2(15),
  benchmarkdutypremiumusd   VARCHAR2(15),
  adbenchmarkdutypremiumusd VARCHAR2(15),
  adjusteddutypremiumusd    VARCHAR2(15)
)
;
alter table DUTYPREMIUM
  add constraint PK_DUTYPREMIUM primary key (TRANSNO, TARGETID);

prompt Creating TARGETPREMIUM...
create table TARGETPREMIUM
(
  transno               VARCHAR2(35) not null,
  targetid              VARCHAR2(2) not null,
  shorttermdiscount     VARCHAR2(15),
  benchmarkpremium      VARCHAR2(15),
  adjustedpremium       VARCHAR2(15),
  benchmarkpremiumusd   VARCHAR2(15),
  adbenchmarkpremiumusd VARCHAR2(15),
  adjustedpremiumusd    VARCHAR2(15)
)
;
alter table TARGETPREMIUM
  add constraint PK_TARGETPREMIUM primary key (TRANSNO, TARGETID);

prompt Loading DUTYPREMIUM...
prompt Table is empty
prompt Loading TARGETPREMIUM...
prompt Table is empty
set feedback on
set define on
prompt Done.
