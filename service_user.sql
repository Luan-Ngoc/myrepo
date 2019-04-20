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

INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10005', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 6, '0', '0004');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10004', 'danm', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 4, '0', '0002');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10005', 'height', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 5, '0', '0003');
INSERT INTO public.service_user (insurer_number, name, gender, birthday, address, phone_number, care_period_start_date, care_period_end_date, profile_picture, id, insured_number, service_user_number) VALUES ('10003', 'hight', '', '1978/01/01', 'HaNoi', '0331234568', '2018/10/10', '2018/04/04', null, 3, '0', '0001');

alter table service_user owner to postgres;

