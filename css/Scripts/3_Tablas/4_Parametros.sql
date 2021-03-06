-- Create table
create table PARAMETROS
(
  parametros_id VARCHAR2(40) not null,
  valor         VARCHAR2(40) not null,
  fec_creacion		DATE,
  usuario_creacion	VARCHAR2(10),
  fec_ultima_mod	DATE,
  usuario_ultima_mod	VARCHAR2(10)
)
tablespace GE_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table PARAMETROS
  add constraint PK_PARAMETROS_ID primary key (PARAMETROS_ID)
  using index 
  tablespace GE_DATA
  pctfree 10
  initrans 2
  maxtrans 255;
