/*
===================================================
DDL Script : Create Bronze Tables
===================================================

Script Purpose : 
   This script cretae tables in the 'bronze' schema, dropping existing tables
    if they already exist.
    Run this script to re-define the DDL struture of 'bronze' Table
==================================================

*/

-- Active: 1750349772188@@127.0.0.1@5432@level_180_data_house
-- Drop table if it exists (PostgreSQL syntax)
DROP TABLE IF EXISTS level_180_raw_data ;
-- Create the first table in silver schema: CRM Customer Information
CREATE TABLE level_180_raw_data (

    email VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    title TEXT,
    simplified_title TEXT,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    location TEXT ,
    company_name TEXT,
    company_domain TEXT,
    company_size VARCHAR(50),
    linkedin_url TEXT,
    status VARCHAR(50),
    number_of_opens INT,
    label TEXT,
    meeting_booked BOOLEAN,
    owner TEXT,
    sequence_name TEXT,
    sequence_template_name TEXT ,
    saved_search_or_lead_list_name TEXT,
    mailbox TEXT,
    created_at VARCHAR(50),
    contact_url TEXT,
    replied BOOLEAN,
    industry TEXT,
    last_stage_executed INT,
    last_stage_executed_at VARCHAR(50),
    manually_added_number VARCHAR(50),
    sourced_number VARCHAR(50) ,
    mobile_number VARCHAR(50),
    phone_number VARCHAR(50),
    work_number VARCHAR(50) ,
    notes VARCHAR (50),
    dwh_create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- this is added by the Engineer.The record's load timestamp
);

