\c mosip_digitalcard_insurance


GRANT CONNECT
   ON DATABASE mosip_digitalcard_insurance
   TO digitalcardinsuranceuser;

GRANT USAGE
   ON SCHEMA digitalcard
   TO digitalcardinsuranceuser;

GRANT SELECT,INSERT,UPDATE,DELETE,REFERENCES
   ON ALL TABLES IN SCHEMA digitalcard
   TO digitalcardinsuranceuser;

