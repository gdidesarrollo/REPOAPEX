--liquibase formatted sql

--changeset jgarcia:1 labels:example-label context:example-context
--comment: example comment
create TABLE MEDICAMENTOS (ID NUMBER);

--changeset jgarcia:2 labels:example-label context:example-context
--comment: insert
insert into MEDICAMENTOS values(1);

--changeset jgarcia:3 labels:example-label context:example-context
--comment: insert
insert into MEDICAMENTOS values(2);

--changeset jgarcia:4 labels:example-label context:example-context
--comment: apex
@APEX\f138.sql