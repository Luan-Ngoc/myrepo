create table if not exists service_user
(	id bigint not null,
	insurer_number varchar(20) not null,
	insured_number varchar(20) not null,
	service_user_number varchar(6) not null,
	name varchar(40) not null,
	gender varchar(20),
	birthday varchar(12),
	address varchar(40),
	phone_number varchar(20),
	care_period_start_date varchar(12),
	care_period_end_date varchar(12),
	profile_picture varchar(100000)
);

create table if not exists service_user_history
(	id bigint not null,
 	history_number varchar(20) not null,
	insurer_number varchar(20) not null,
	insured_number varchar(20) not null,
	service_user_number varchar(6) not null,
	name varchar(40) not null,
	gender varchar(20),
	birthday varchar(12),
	address varchar(40),
	phone_number varchar(20),
	care_period_start_date varchar(12),
	care_period_end_date varchar(12),
	profile_picture varchar(100000),
	inserted varchar(40),
	insert_time timestamp 
);

CREATE OR REPLACE FUNCTION service_user_trig_history() RETURNS trigger
  LANGUAGE plpgsql AS
$$BEGIN
  INSERT INTO public.service_history_user (
            id,
            insurer_number,
            insured_number,
            service_user_number,
            name,
            gender,
            birthday,
            address,
            phone_number,
            care_period_start_date,
            care_period_end_date,
            profile_picture,
            inserted,
            insert_time
          )
          VALUES (
            OLD.id,
            'height',
            '',
            '1978/01/01',
            'HaNoi',
            '0331234568',
            '2018/10/10',
            '2018/04/04',
            null,
            6,
            '0',
            '0004',
            '',
            ''
          );


END;$$;

CREATE TRIGGER service_user_trig_history BEFORE INSERT OR UPDATE ON service_user FOR EACH ROW
EXECUTE PROCEDURE service_user_trig_history();
   
   

INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10005', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 6, '0', '0004');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10004', 'danm', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 4, '0', '0002');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10005', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 5, '0', '0003');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10003', 'hight', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 3, '0', '0001');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10006', 'yellow', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 1, '0', '0004');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10007', 'small', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 2, '0', '0002');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10008', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 7, '0', '0003');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10009', 'hight', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 8, '0', '0001');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10010', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 9, '0', '0004');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10011', 'danm', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 10, '0', '0002');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10012', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 11, '0', '0003');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10013', 'hight', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 12, '0', '0001');
