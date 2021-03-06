-- CREATE THE APPLICATION SCHEMA
CREATE SCHEMA IF NOT EXISTS auth;

--CREATE THE MAIN TABLE THAT WILL STORE ALL DREAMIX MEMBERS
CREATE SEQUENCE IF NOT EXISTS auth.user_id_seq;

CREATE TABLE IF NOT EXISTS auth.USER (
	USER_ID BIGINT NOT NULL DEFAULT nextval('auth.user_id_seq'),
    USERNAME VARCHAR(128) UNIQUE,
    PASSWORD VARCHAR(256),
    ENABLED BOOL,
	CONSTRAINT user_pk PRIMARY KEY (USER_ID)
);