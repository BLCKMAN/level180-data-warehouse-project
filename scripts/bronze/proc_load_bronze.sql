/*

===================================================================
Store Procedure : Load Bronze Layer (Source -> Bronze)
===================================================================
Script Purpose : 
    This stored prodedure loads data into the 'bronze' schema from external CSV files.
    It performs the following actions :
    - Truncates the bronze tables before loading data.
    - Uses the 'BULK INSERT' command to load data from csv Files to bronze tables.

Parameters : 
    None.
    This stored procedures does not accept any parameters or returns any values.

Usage Example : 
    EXEC bronze.load_bronze;

=======================================================================
*/

\copy 
level_180_raw_data (email, first_name, last_name, title, simplified_title, city, state, country, location, company_name, company_domain, company_size, linkedin_url, status, number_of_opens, label, meeting_booked, owner, sequence_name, sequence_template_name, saved_search_or_lead_list_name, mailbox, created_at, contact_url, replied, industry, last_stage_executed, last_stage_executed_at, manually_added_number, sourced_number, mobile_number, phone_number, work_number, notes)
  FROM 'C:\Users\hhlel\Downloads\Level 180_Raw Data\level_180_raw_data.csv' 
  WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
