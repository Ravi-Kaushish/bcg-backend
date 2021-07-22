--The Enum Tables Should have Their Refereces in Customers, Insurance and Policies Table 
--Avoiding Foreign Key constraints because of short time
--In a real project I'd choose uuid instead for serial datatype for distinction and avoid duplication
--Table to store Enum Genders
CREATE TABLE public.genders (
  code varchar(1) NOT NULL,
  "name" varchar(100) NULL,
  CONSTRAINT genders_pkey PRIMARY KEY (code)
);

--Table to store Enum Customer Region
CREATE TABLE public.regions (
  id serial NOT NULL,
  "name" varchar(100) NULL,
  zip varchar(6) NULL,
  CONSTRAINT regions_pkey PRIMARY KEY (id)
);

--Table to store Enum Income Group
CREATE TABLE public.income_groups (
  id serial NOT NULL,
  income_range varchar(100) NULL,
  description varchar(250) NOT NULL,
  CONSTRAINT income_groups_pkey PRIMARY KEY (id)
);

--Table to store Customer Data
CREATE TABLE public.customers (
  customer_id serial NOT NULL,
  "name" varchar(100) NOT NULL,
  email varchar(250) NOT NULL,
  phone varchar(15) NOT NULL,
  gender_code varchar(1) NULL,
  dob varchar(100) NULL,
  marital_status bool NULL,
  region_id int8 NULL,
  income_group_id int4 NULL,
  is_active bool NULL DEFAULT true,
  created_date timestamptz NULL DEFAULT now(),
  updated_date timestamptz NULL DEFAULT now(),
  CONSTRAINT customers_pkey PRIMARY KEY (customer_id)
);

--Table to store Enum Vehicle Group
CREATE TABLE public.vehicle_segments (
  code varchar(5) NOT NULL,
  fuel varchar(20) NOT NULL,
  description varchar(100) NOT NULL,
  created_date timestamp NULL DEFAULT now(),
  CONSTRAINT vehicle_segments_pkey PRIMARY KEY (code)
);

--Table to store Policy Properties/Coverages
CREATE TABLE public.policies (
  policy_id int4 NOT NULL DEFAULT nextval('policies_id_seq' :: regclass),
  body_injury_liability bool NOT NULL DEFAULT false,
  personal_injury_protection bool NOT NULL DEFAULT false,
  property_damage_liability bool NOT NULL DEFAULT false,
  collision bool NOT NULL DEFAULT false,
  comprehensive bool NOT NULL DEFAULT false,
  vehicle_segment_code varchar NOT NULL,
  premium numeric NULL,
  created_date timestamp NULL DEFAULT now(),
  updated_date timestamp NULL DEFAULT now(),
  CONSTRAINT policies_pkey PRIMARY KEY (policy_id)
);

--Table to store Customer and Policy Data mappings
CREATE TABLE public.insurances (
  insurance_id serial NOT NULL,
  customer_id int4 NOT NULL,
  policy_id int4 NOT NULL,
  purchase_date date NULL DEFAULT CURRENT_DATE,
  expiry_date date NULL DEFAULT (CURRENT_DATE + '1 year' :: interval)
);