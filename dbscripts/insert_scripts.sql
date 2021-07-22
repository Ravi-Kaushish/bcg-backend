--Genders Enum Data
INSERT INTO public.genders (code,"name") VALUES
	 ('M','Male'),
	 ('F','Female'),
	 ('T','Transgender');

--Customer Regions Enum Data
INSERT INTO public.regions ("name",zip) VALUES
	 ('East','202122'),
	 ('West','202123'),
	 ('North','202124'),
	 ('South','202125');

--Custome Income Group Enum Data
INSERT INTO public.income_groups (income_range,description) VALUES
	 ('$0-$25K','People with income range in 0- $25K'),
	 ('$25-$70K','People with income range in $25-$70K'),
	 ('$70-$125K','People with income range in $70-$7125K');

--Customers Data
INSERT INTO public.customers ("name",email,phone,gender_code,dob,marital_status,region_id,income_group_id,is_active,created_date,updated_date) VALUES
	 ('harry','harry@gmail.com','0123456789','M',NULL,true,1,1,true,'2021-07-22 01:26:45.894246+05:30','2021-07-22 01:26:45.894246+05:30'),
	 ('tony','tony@gmail.com','0123456789','T',NULL,NULL,4,2,true,'2021-07-22 01:26:46.224311+05:30','2021-07-22 01:26:46.224311+05:30'),
	 ('jerry','jerry@gmail.com','0123456789','M',NULL,true,2,1,true,'2021-07-22 01:26:46.554309+05:30','2021-07-22 01:26:46.554309+05:30'),
	 ('tom','tom@gmail.com','0123456789','M',NULL,NULL,1,3,true,'2021-07-22 01:26:46.854201+05:30','2021-07-22 01:26:46.854201+05:30'),
	 ('bill','bill@gmail.com','0123456789','T',NULL,true,4,1,true,'2021-07-22 01:26:47.214236+05:30','2021-07-22 01:26:47.214236+05:30'),
	 ('sebastian','sebastian@gmail.com','0123456789','M',NULL,true,2,2,true,'2021-07-22 01:26:47.524383+05:30','2021-07-22 01:26:47.524383+05:30'),
	 ('ravi','ravi@gmail.com','0123456789','M',NULL,NULL,1,1,true,'2021-07-22 01:26:47.814336+05:30','2021-07-22 01:26:47.814336+05:30'),
	 ('hillary','hillary@gmail.com','0123456789','F',NULL,NULL,2,2,true,'2021-07-22 01:26:48.144234+05:30','2021-07-22 01:26:48.144234+05:30'),
	 ('bijay','bijay@gmail.com','0123456789','M',NULL,true,3,1,true,'2021-07-22 01:26:48.474332+05:30','2021-07-22 01:26:48.474332+05:30'),
	 ('shweta','shweta@gmail.com','0123456789','F',NULL,NULL,2,1,true,'2021-07-22 01:26:48.774252+05:30','2021-07-22 01:26:48.774252+05:30');
INSERT INTO public.customers ("name",email,phone,gender_code,dob,marital_status,region_id,income_group_id,is_active,created_date,updated_date) VALUES
	 ('Debashish','Debashish@gmail.com','0123456789','M',NULL,false,3,1,true,'2021-07-22 01:26:49.114304+05:30','2021-07-22 01:26:49.114304+05:30'),
	 ('ahana','ahana@gmail.com','0123456789','F',NULL,NULL,1,1,true,'2021-07-22 01:26:49.429299+05:30','2021-07-22 01:26:49.429299+05:30'),
	 ('nitish','nitish@gmail.com','0123456789','M',NULL,true,4,1,true,'2021-07-22 01:26:49.764302+05:30','2021-07-22 01:26:49.764302+05:30'),
	 ('varun','varun@gmail.com','0123456789','M',NULL,NULL,1,2,true,'2021-07-22 01:26:50.064227+05:30','2021-07-22 01:26:50.064227+05:30'),
	 ('jeff','jeff@gmail.com','0123456789','T',NULL,true,1,2,true,'2021-07-22 01:26:50.39426+05:30','2021-07-22 01:26:50.39426+05:30'),
	 ('vishal','vishal@gmail.com','0123456789','M',NULL,NULL,2,2,true,'2021-07-22 01:26:50.719381+05:30','2021-07-22 01:26:50.719381+05:30'),
	 ('bhopi','bhopi@gmail.com','0123456789','F',NULL,true,1,2,true,'2021-07-22 01:26:51.039358+05:30','2021-07-22 01:26:51.039358+05:30'),
	 ('gopi','gopi@gmail.com','0123456789','F',NULL,NULL,3,2,true,'2021-07-22 01:26:51.344332+05:30','2021-07-22 01:26:51.344332+05:30'),
	 ('anam','anam@gmail.com','0123456789','F',NULL,true,1,1,true,'2021-07-22 01:26:51.66439+05:30','2021-07-22 01:26:51.66439+05:30'),
	 ('ali','ali@gmail.com','0123456789','T',NULL,true,2,1,true,'2021-07-22 01:26:51.994252+05:30','2021-07-22 01:26:51.994252+05:30');
INSERT INTO public.customers ("name",email,phone,gender_code,dob,marital_status,region_id,income_group_id,is_active,created_date,updated_date) VALUES
	 ('casey','casey@gmail.com','0123456789','F',NULL,true,2,3,true,'2021-07-22 01:26:52.319341+05:30','2021-07-22 01:26:52.319341+05:30');

--Policy Related Vehicle Segments Enum Data
INSERT INTO public.vehicle_segments (code,fuel,description,created_date) VALUES
	 ('A','CNG','Vehicles that run on CNG','2021-07-22 00:46:48.018472'),
	 ('B','Petrol','Vehicles that run on Petrol','2021-07-22 00:46:48.313522'),
	 ('C','Diesel','Vehicles that run on Diesel','2021-07-22 00:46:48.748489'),
	 ('D','Electric','Vehicles that run on Electricity','2021-07-22 00:46:49.153736');

--Policies Data
INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (true,false,true,false,true,'A',958,'2021-07-22 00:52:34.058609','2021-07-22 00:52:34.058609'),
	 (false,true,true,true,false,'B',6515,'2021-07-22 00:52:34.458525','2021-07-22 00:52:34.458525'),
	 (true,false,false,false,true,'A',1234,'2021-07-22 00:52:34.778531','2021-07-22 00:52:34.778531'),
	 (true,false,false,false,false,'A',4257,'2021-07-22 00:52:35.718592','2021-07-22 00:52:35.718592'),
	 (true,true,true,true,true,'C',7545,'2021-07-22 00:52:36.058673','2021-07-22 00:52:36.058673'),
	 (false,false,false,false,false,'B',4125,'2021-07-22 00:52:36.358583','2021-07-22 00:52:36.358583'),
	 (false,true,false,true,true,'C',4125,'2021-07-22 00:52:36.688652','2021-07-22 00:52:36.688652'),
	 (true,true,true,true,false,'A',1236,'2021-07-22 00:52:37.008508','2021-07-22 00:52:37.008508'),
	 (true,true,true,false,true,'A',1254,'2021-07-22 00:52:37.308515','2021-07-22 00:52:37.308515'),
	 (true,false,true,false,false,'B',4534,'2021-07-22 00:52:37.643601','2021-07-22 00:52:37.643601');
INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (false,true,false,true,false,'A',1231,'2021-07-22 00:52:37.938594','2021-07-22 00:52:37.938594'),
	 (true,false,true,false,true,'B',2341,'2021-07-22 00:52:38.238928','2021-07-22 00:52:38.238928'),
	 (true,true,false,true,false,'B',1234,'2021-07-22 00:52:38.528659','2021-07-22 00:52:38.528659'),
	 (true,false,true,true,false,'A',4231,'2021-07-22 00:52:38.933518','2021-07-22 00:52:38.933518'),
	 (true,false,true,false,true,'A',958,'2021-07-22 00:52:34.058','2021-07-22 00:52:34.058'),
	 (false,true,true,true,false,'B',6515,'2021-07-22 00:52:34.458','2021-07-22 00:52:34.458'),
	 (true,false,false,false,true,'A',1234,'2021-07-22 00:52:34.778','2021-07-22 00:52:34.778'),
	 (false,true,true,true,false,'D',542,'2021-07-22 00:52:35.078','2021-07-22 00:52:35.078'),
	 (true,false,false,false,true,'D',562,'2021-07-22 00:52:35.418','2021-07-22 00:52:35.418'),
	 (true,false,false,false,false,'A',4257,'2021-07-22 00:52:35.718','2021-07-22 00:52:35.718');
INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (true,true,true,true,true,'C',7545,'2021-07-22 00:52:36.058','2021-07-22 00:52:36.058'),
	 (false,false,false,false,false,'B',4125,'2021-07-22 00:52:36.358','2021-07-22 00:52:36.358'),
	 (false,true,false,true,true,'C',4125,'2021-07-22 00:52:36.688','2021-07-22 00:52:36.688'),
	 (true,true,true,true,false,'A',1236,'2021-07-22 00:52:37.008','2021-07-22 00:52:37.008'),
	 (true,true,true,false,true,'A',1254,'2021-07-22 00:52:37.308','2021-07-22 00:52:37.308'),
	 (true,false,true,false,false,'B',4534,'2021-07-22 00:52:37.643','2021-07-22 00:52:37.643'),
	 (false,true,false,true,false,'A',1231,'2021-07-22 00:52:37.938','2021-07-22 00:52:37.938'),
	 (true,false,true,false,true,'B',2341,'2021-07-22 00:52:38.238','2021-07-22 00:52:38.238'),
	 (true,true,false,true,false,'B',1234,'2021-07-22 00:52:38.528','2021-07-22 00:52:38.528'),
	 (true,false,true,true,false,'A',4231,'2021-07-22 00:52:38.933','2021-07-22 00:52:38.933');
INSERT INTO public.policies (body_injury_liability,personal_injury_protection,property_damage_liability,collision,comprehensive,vehicle_segment_code,premium,created_date,updated_date) VALUES
	 (true,true,true,true,true,'D',1200,'2021-07-22 00:52:35.418582','2021-07-22 00:52:35.418582'),
	 (true,true,true,true,true,'D',1800,'2021-07-22 00:52:35.078597','2021-07-22 00:52:35.078597');


--Insurances Data
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (3,3,'2020-07-22','2022-07-22'),
	 (3,1,'2020-07-22','2022-07-22'),
	 (11,2,'2020-07-22','2022-07-22'),
	 (10,3,'2020-07-22','2022-07-22'),
	 (21,2,'2020-07-22','2022-07-22'),
	 (12,3,'2020-07-22','2022-07-22'),
	 (8,7,'2020-07-22','2022-07-22'),
	 (18,7,'2020-07-22','2022-07-22'),
	 (16,3,'2020-07-22','2022-07-22'),
	 (3,1,'2020-01-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (4,2,'2020-12-22','2022-07-22'),
	 (2,5,'2020-08-22','2022-07-22'),
	 (2,3,'2020-03-22','2022-07-22'),
	 (20,3,'2020-03-22','2022-07-22'),
	 (2,1,'2020-09-22','2022-07-22'),
	 (15,2,'2020-04-22','2022-07-22'),
	 (12,11,'2020-08-22','2022-07-22'),
	 (11,8,'2020-11-22','2022-07-22'),
	 (16,7,'2020-09-22','2022-07-22'),
	 (14,7,'2020-12-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (14,15,'2020-12-22','2022-07-22'),
	 (13,5,'2020-12-22','2022-07-22'),
	 (15,8,'2020-04-22','2022-07-22'),
	 (7,7,'2020-06-22','2022-07-22'),
	 (22,14,'2020-04-22','2022-07-22'),
	 (16,14,'2020-05-22','2022-07-22'),
	 (9,7,'2020-09-22','2022-07-22'),
	 (8,18,'2020-03-22','2022-07-22'),
	 (18,13,'2020-02-22','2022-07-22'),
	 (45,9,'2020-09-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (21,13,'2020-08-22','2022-07-22'),
	 (13,11,'2020-08-22','2022-07-22'),
	 (2,2,'2020-03-22','2022-07-22'),
	 (78,1,'2020-01-22','2022-07-22'),
	 (19,3,'2020-05-22','2022-07-22'),
	 (2,1,'2020-03-22','2022-07-22'),
	 (18,3,'2020-06-22','2022-07-22'),
	 (3,2,'2020-12-22','2022-07-22'),
	 (6,1,'2020-11-22','2022-07-22'),
	 (8,1,'2020-09-22','2022-07-22');
INSERT INTO public.insurances (customer_id,policy_id,purchase_date,expiry_date) VALUES
	 (9,8,'2020-11-22','2022-07-22'),
	 (11,1,'2020-01-22','2022-07-22'),
	 (18,7,'2020-10-22','2022-07-22'),
	 (19,7,'2020-10-22','2022-07-22'),
	 (2,5,'2020-10-22','2022-07-22');