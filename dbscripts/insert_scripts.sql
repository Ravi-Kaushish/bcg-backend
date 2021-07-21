INSERT INTO public.genders (code,"name") VALUES
	 ('M','Male'),
	 ('F','Female'),
	 ('T','Transgender');

INSERT INTO public.regions ("name",zip) VALUES
	 ('East','202122'),
	 ('West','202123'),
	 ('North','202124'),
	 ('South','202125');

INSERT INTO public.income_groups (income_range,description) VALUES
	 ('$0-$25K','People with income range in 0- $25K'),
	 ('$25-$70K','People with income range in $25-$70K'),
	 ('$70-$125K','People with income range in $70-$7125K');

INSERT INTO public.customers ("name",email,phone,gender_code,dob,marital_status,region,income_group_id,is_active,created_date,updated_date) VALUES
	 ('harry','harry@gmail.com','0123456789','M',NULL,true,'1',1,true,'2021-07-22 01:26:45.894','2021-07-22 01:26:45.894'),
	 ('tony','tony@gmail.com','0123456789','T',NULL,NULL,'4',2,true,'2021-07-22 01:26:46.224','2021-07-22 01:26:46.224'),
	 ('jerry','jerry@gmail.com','0123456789','M',NULL,true,'2',1,true,'2021-07-22 01:26:46.554','2021-07-22 01:26:46.554'),
	 ('tom','tom@gmail.com','0123456789','M',NULL,NULL,'1',3,true,'2021-07-22 01:26:46.854','2021-07-22 01:26:46.854'),
	 ('bill','bill@gmail.com','0123456789','T',NULL,true,'4',1,true,'2021-07-22 01:26:47.214','2021-07-22 01:26:47.214'),
	 ('sebastian','sebastian@gmail.com','0123456789','M',NULL,true,'2',2,true,'2021-07-22 01:26:47.524','2021-07-22 01:26:47.524'),
	 ('ravi','ravi@gmail.com','0123456789','M',NULL,NULL,'1',1,true,'2021-07-22 01:26:47.814','2021-07-22 01:26:47.814'),
	 ('hillary','hillary@gmail.com','0123456789','F',NULL,NULL,'2',2,true,'2021-07-22 01:26:48.144','2021-07-22 01:26:48.144');
INSERT INTO public.customers ("name",email,phone,gender_code,dob,marital_status,region,income_group_id,is_active,created_date,updated_date) VALUES
	 ('bijay','bijay@gmail.com','0123456789','M',NULL,true,'3',1,true,'2021-07-22 01:26:48.474','2021-07-22 01:26:48.474'),
	 ('shweta','shweta@gmail.com','0123456789','F',NULL,NULL,'2',1,true,'2021-07-22 01:26:48.774','2021-07-22 01:26:48.774'),
	 ('Debashish','Debashish@gmail.com','0123456789','M',NULL,false,'3',1,true,'2021-07-22 01:26:49.114','2021-07-22 01:26:49.114'),
	 ('ahana','ahana@gmail.com','0123456789','F',NULL,NULL,'1',1,true,'2021-07-22 01:26:49.429','2021-07-22 01:26:49.429'),
	 ('nitish','nitish@gmail.com','0123456789','M',NULL,true,'4',1,true,'2021-07-22 01:26:49.764','2021-07-22 01:26:49.764'),
	 ('varun','varun@gmail.com','0123456789','M',NULL,NULL,'1',2,true,'2021-07-22 01:26:50.064','2021-07-22 01:26:50.064'),
	 ('jeff','jeff@gmail.com','0123456789','T',NULL,true,'1',2,true,'2021-07-22 01:26:50.394','2021-07-22 01:26:50.394');
INSERT INTO public.customers ("name",email,phone,gender_code,dob,marital_status,region,income_group_id,is_active,created_date,updated_date) VALUES
	 ('vishal','vishal@gmail.com','0123456789','M',NULL,NULL,'2',2,true,'2021-07-22 01:26:50.719','2021-07-22 01:26:50.719'),
	 ('bhopi','bhopi@gmail.com','0123456789','F',NULL,true,'1',2,true,'2021-07-22 01:26:51.039','2021-07-22 01:26:51.039'),
	 ('gopi','gopi@gmail.com','0123456789','F',NULL,NULL,'3',2,true,'2021-07-22 01:26:51.344','2021-07-22 01:26:51.344'),
	 ('anam','anam@gmail.com','0123456789','F',NULL,true,'1',1,true,'2021-07-22 01:26:51.664','2021-07-22 01:26:51.664'),
	 ('ali','ali@gmail.com','0123456789','T',NULL,true,'2',1,true,'2021-07-22 01:26:51.994','2021-07-22 01:26:51.994'),
	 ('casey','casey@gmail.com','0123456789','F',NULL,true,'2',3,true,'2021-07-22 01:26:52.319','2021-07-22 01:26:52.319');

INSERT INTO public.vehicle_segments (code,fuel,description,created_date) VALUES
	 ('A','CNG','Vehicles that run on CNG','2021-07-22 00:46:48.018'),
	 ('B','Petrol','Vehicles that run on Petrol','2021-07-22 00:46:48.313'),
	 ('C','Diesel','Vehicles that run on Diesel','2021-07-22 00:46:48.748'),
	 ('D','Electric','Vehicles that run on Electricity','2021-07-22 00:46:49.153');

INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (true,false,true,false,true,'A',958,'2021-07-22 00:52:34.058','2021-07-22 00:52:34.058'),
	 (false,true,true,true,false,'B',6515,'2021-07-22 00:52:34.458','2021-07-22 00:52:34.458'),
	 (true,false,false,false,true,'A',1234,'2021-07-22 00:52:34.778','2021-07-22 00:52:34.778'),
	 (false,true,true,true,false,'D',542,'2021-07-22 00:52:35.078','2021-07-22 00:52:35.078'),
	 (true,false,false,false,true,'D',562,'2021-07-22 00:52:35.418','2021-07-22 00:52:35.418');
INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (true,false,false,false,false,'A',4257,'2021-07-22 00:52:35.718','2021-07-22 00:52:35.718'),
	 (true,true,true,true,true,'C',7545,'2021-07-22 00:52:36.058','2021-07-22 00:52:36.058'),
	 (false,false,false,false,false,'B',4125,'2021-07-22 00:52:36.358','2021-07-22 00:52:36.358'),
	 (false,true,false,true,true,'C',4125,'2021-07-22 00:52:36.688','2021-07-22 00:52:36.688'),
	 (true,true,true,true,false,'A',1236,'2021-07-22 00:52:37.008','2021-07-22 00:52:37.008'),
	 (true,true,true,false,true,'A',1254,'2021-07-22 00:52:37.308','2021-07-22 00:52:37.308');
INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (true,false,true,false,false,'B',4534,'2021-07-22 00:52:37.643','2021-07-22 00:52:37.643'),
	 (false,true,false,true,false,'A',1231,'2021-07-22 00:52:37.938','2021-07-22 00:52:37.938'),
	 (true,false,true,false,true,'B',2341,'2021-07-22 00:52:38.238','2021-07-22 00:52:38.238'),
	 (true,true,false,true,false,'B',1234,'2021-07-22 00:52:38.528','2021-07-22 00:52:38.528'),
	 (true,false,true,true,false,'A',4231,'2021-07-22 00:52:38.933','2021-07-22 00:52:38.933');

INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (2,1,'2021-07-22','2022-07-22'),
	 (3,1,'2021-07-22','2022-07-22'),
	 (4,2,'2021-07-22','2022-07-22'),
	 (2,5,'2021-07-22','2022-07-22'),
	 (4,2,'2021-07-22','2022-07-22'),
	 (2,5,'2021-07-22','2022-07-22'),
	 (3,3,'2021-07-22','2022-07-22'),
	 (3,1,'2021-07-22','2022-07-22'),
	 (2,3,'2021-07-22','2022-07-22'),
	 (11,2,'2021-07-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (10,3,'2021-07-22','2022-07-22'),
	 (2,1,'2021-07-22','2022-07-22'),
	 (20,3,'2021-07-22','2022-07-22'),
	 (21,2,'2021-07-22','2022-07-22'),
	 (2,1,'2021-07-22','2022-07-22'),
	 (12,3,'2021-07-22','2022-07-22'),
	 (15,2,'2021-07-22','2022-07-22'),
	 (12,11,'2021-07-22','2022-07-22'),
	 (11,8,'2021-07-22','2022-07-22'),
	 (18,7,'2021-07-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (16,7,'2021-07-22','2022-07-22'),
	 (14,7,'2021-07-22','2022-07-22'),
	 (14,15,'2021-07-22','2022-07-22'),
	 (13,5,'2021-07-22','2022-07-22'),
	 (19,7,'2021-07-22','2022-07-22'),
	 (15,8,'2021-07-22','2022-07-22'),
	 (7,7,'2021-07-22','2022-07-22'),
	 (2,8,'2021-07-22','2022-07-22'),
	 (22,14,'2021-07-22','2022-07-22'),
	 (8,7,'2021-07-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (16,14,'2021-07-22','2022-07-22'),
	 (9,7,'2021-07-22','2022-07-22'),
	 (8,18,'2021-07-22','2022-07-22'),
	 (18,7,'2021-07-22','2022-07-22'),
	 (18,13,'2021-07-22','2022-07-22'),
	 (45,9,'2021-07-22','2022-07-22'),
	 (21,13,'2021-07-22','2022-07-22'),
	 (13,11,'2021-07-22','2022-07-22'),
	 (2,1,'2021-07-22','2022-07-22'),
	 (16,3,'2021-07-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (2,2,'2021-07-22','2022-07-22'),
	 (78,1,'2021-07-22','2022-07-22'),
	 (19,3,'2021-07-22','2022-07-22'),
	 (2,1,'2021-07-22','2022-07-22'),
	 (18,3,'2021-07-22','2022-07-22'),
	 (3,2,'2021-07-22','2022-07-22');