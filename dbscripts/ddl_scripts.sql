--The Enum Tables Should have Their Refereces in Customers, Insurance and Policies Table 
--Avoiding Foreign Key constraints because of short time
--Table to store Enum Genders
CREATE TABLE public.genders (
  code varchar(1) primary key,
  name varchar(100) null
);

--Table to store Enum Customer Region
CREATE TABLE public.regions (
  id serial primary key,
  name varchar(100) null,
  zip varchar(6) null
);

--Table to store Enum Income Group
CREATE TABLE public.income_groups (
  id serial primary key,
  income_range varchar(100) null,
  description varchar(250) not null
);

--Table to store Customer Data
CREATE TABLE public.customers (
  customer_id SERIAL primary key,
  name varchar(100) NOT NULL,
  email varchar(250) not null,
  phone varchar(15) not null,
  gender_code varchar(1) null,
  dob varchar(100) null,
  marital_status bool null,
  region_id int8 null,
  income_group_id int null,
  is_active bool null default true,
  created_date timestamptz NULL DEFAULT now(),
  updated_date timestamptz NULL DEFAULT now()
);

--Table to store Enum Vehicle Group
CREATE TABLE public.vehicle_segments (
  code varchar(5) primary key not null,
  fuel varchar(20) not null,
  description varchar(100) not null,
  created_date timestamp default now()
);

--Table to store Policy Properties/Coverages
CREATE TABLE public.policies (
  policy_id serial primary key,
  body_injury_liability bool not null default false,
  personal_injury_protection bool not null default false,
  property_damage_liability bool not null default false,
  collision bool not null default false,
  comprehensive bool not null default false,
  vehicle_segment_code varchar not null,
  premium decimal null,
  created_date timestamp default now(),
  updated_date timestamp default now()
);

--Table to store Policy Customer Data mappings
CREATE TABLE public.insurances (
  insurance_id serial not null primary key,
  customer_id int not null,
  policy_id int not null,
  purchase_date DATE DEFAULT CURRENT_DATE,
  expiry_date DATE DEFAULT CURRENT_DATE + interval '1 years'
);