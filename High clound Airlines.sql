select count(*) from high_cloud_airlines;
-- create table origin markets
create table origin_markets(Origin_Airport_Market_Id int, Origin_Market varchar(50));
select count(*) from origin_markets;

 -- create table flight type
create table Flight_Types( Datasource_ID varchar(20), Flight_Type varchar(50));
insert into Flight_Types values("DF", "Domestic, Foreign Carriers"),("DU","Domestic, US Carriers Only"),("IF","International, Foreign Carriers"),("IU","International, US Carriers Only");
select * from flight_types;

-- create table Distance Groups
create table Distance_Groups( Distance_Group_Id int, Distance_Interval varchar(50));
select *  from distance_groups;

-- create table Destination Markets
create table Destination_Markets(Destination_Air int, Destination_markets varchar(50));
Select count(*) from destination_markets;

-- create table Carrier Operating Region
create table Carrier_Operating_Region( Region_Code varchar(20), Carriers_Operating_Region varchar(50));
insert into Carrier_Operating_Region Values("A", "Atlantic"),("D","Domestic"),("I","International"),("L","Latin America"),("P","Pacific"),("S","System");
select * from Carrier_Operating_Region;

-- create table Carrier Groups
create table Carrier_Groups( Carrier_Group_ID int, Carrier_Group Text );
select * from Carrier_Groups;

-- create table Airlines
create table Airlines(Airline_ID int, Airline tEXT);
select * from airlines;

-- create table AirCraft_types
create table Aircraft_types( Aircraft_type_id int, Aircraft_type text);
drop table aircraft_types;
select count(*) from aircraft_types;

-- create table Aircraft group
create table Aircraft_Groups( Aircraft_Group_ID int , Aircraft_Group varchar(100));
select count(*) from aircraft_groups;

-- rename all the column from proper sql format
ALTER TABLE high_cloud_airlines
RENAME COLUMN `%Airline ID` TO airline_id,
RENAME COLUMN `%Carrier Group ID` TO carrier_group_id,
RENAME COLUMN `%Unique Carrier Code` TO unique_carrier_code,
RENAME COLUMN `%Unique Carrier Entity Code` TO unique_carrier_entity_code,
RENAME COLUMN `%Region Code` TO region_code,
RENAME COLUMN `%Origin Airport ID` TO origin_airport_id,
RENAME COLUMN `%Origin Airport Sequence ID` TO origin_airport_sequence_id,
RENAME COLUMN `%Origin Airport Market ID` TO origin_airport_market_id,
RENAME COLUMN `%Origin World Area Code` TO origin_world_area_code,

RENAME COLUMN `%Destination Airport ID` TO destination_airport_id,
RENAME COLUMN `%Destination Airport Sequence ID` TO destination_airport_sequence_id,
RENAME COLUMN `%Destination Airport Market ID` TO destination_airport_market_id,
RENAME COLUMN `%Destination World Area Code` TO destination_world_area_code,

RENAME COLUMN `%Aircraft Group ID` TO aircraft_group_id,
RENAME COLUMN `%Aircraft Type ID` TO aircraft_type_id,
RENAME COLUMN `%Aircraft Configuration ID` TO aircraft_configuration_id,
RENAME COLUMN `%Distance Group ID` TO distance_group_id,
RENAME COLUMN `%Service Class ID` TO service_class_id,
RENAME COLUMN `%Datasource ID` TO datasource_id,

RENAME COLUMN `# Departures Scheduled` TO departures_scheduled,
RENAME COLUMN `# Departures Performed` TO departures_performed,
RENAME COLUMN `# Payload` TO payload,
RENAME COLUMN `# Available Seats` TO available_seats,
RENAME COLUMN `# Transported Passengers` TO transported_passengers,
RENAME COLUMN `# Transported Freight` TO transported_freight,
RENAME COLUMN `# Transported Mail` TO transported_mail,
RENAME COLUMN `# Ramp-To-Ramp Time` TO ramp_to_ramp_time,
RENAME COLUMN `# Air Time` TO air_time,

RENAME COLUMN `Unique Carrier` TO unique_carrier,
RENAME COLUMN `Carrier Code` TO carrier_code,
RENAME COLUMN `Carrier Name` TO carrier_name,

RENAME COLUMN `Origin Airport Code` TO origin_airport_code,
RENAME COLUMN `Origin City` TO origin_city,
RENAME COLUMN `Origin State Code` TO origin_state_code,
RENAME COLUMN `Origin State FIPS` TO origin_state_fips,
RENAME COLUMN `Origin State` TO origin_state,
RENAME COLUMN `Origin Country Code` TO origin_country_code,
RENAME COLUMN `Origin Country` TO origin_country,

RENAME COLUMN `Destination Airport Code` TO destination_airport_code,
RENAME COLUMN `Destination City` TO destination_city,
RENAME COLUMN `Destination State Code` TO destination_state_code,
RENAME COLUMN `Destination State FIPS` TO destination_state_fips,
RENAME COLUMN `Destination State` TO destination_state,
RENAME COLUMN `Destination Country Code` TO destination_country_code,
RENAME COLUMN `Destination Country` TO destination_country,

RENAME COLUMN `Year` TO year,
RENAME COLUMN `Month (#)` TO month,
RENAME COLUMN `Day` TO day,
RENAME COLUMN `Quarter` TO quarter,
RENAME COLUMN `Date` TO flight_date,
RENAME COLUMN `Week Type` TO week_type,

RENAME COLUMN `From - To Airport Code` TO from_to_airport_code,
RENAME COLUMN `From - To Airport ID` TO from_to_airport_id,
RENAME COLUMN `From - To City` TO from_to_city,
RENAME COLUMN `From - To State Code` TO from_to_state_code,
RENAME COLUMN `From - To State` TO from_to_state,

RENAME COLUMN `Airline Name` TO airline_name,
RENAME COLUMN `Origin Market Name` TO origin_market_name,
RENAME COLUMN `Destination Market Name` TO destination_market_name,
RENAME COLUMN `Carrier Group` TO carrier_group,
RENAME COLUMN `Aircraft Type` TO aircraft_type,
RENAME COLUMN `Aircraft Groups` TO aircraft_groups;

SHOW COLUMNS FROM high_cloud_airlines;

ALTER TABLE high_cloud_airlines
RENAME COLUMN `Flight Types(Domestic /International)` TO flight_type;

ALTER TABLE high_cloud_airlines
RENAME COLUMN `Distance Interval` TO distance_interval;

ALTER TABLE high_cloud_airlines
RENAME COLUMN `Carrier Operating Region` TO carrier_operating_region;








