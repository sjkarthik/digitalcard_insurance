-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_digitalcard
-- Table Name 	: digitalcard.digitalcard_transaction
-- Purpose    	: Credential: The credential share is a functional service that interacts with the ID Repository and collects the user attributes for printing.
--           
-- Create By   	: Dhanendra Sahu
-- Created Date	: Aug-2020
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------------
-- Table: digitalcard.digitalcard_transaction
 
-- DROP TABLE IF EXISTS digitalcard.digitalcard_transaction;
 
CREATE TABLE IF NOT EXISTS digitalcard.digitalcard_transaction
(
    rid character varying(36) COLLATE pg_catalog."default" NOT NULL,
    credential_id character varying(36) COLLATE pg_catalog."default",
    uin_salted_hash character varying COLLATE pg_catalog."default",
    status_code character varying(32) COLLATE pg_catalog."default" NOT NULL,
    datashareurl character varying(256) COLLATE pg_catalog."default",
    issuancedate timestamp without time zone,
    cr_by character varying(256) COLLATE pg_catalog."default" NOT NULL,
    cr_dtimes timestamp without time zone NOT NULL,
    upd_by character varying(256) COLLATE pg_catalog."default",
    upd_dtimes timestamp without time zone,
    is_deleted boolean DEFAULT false,
    del_dtimes timestamp without time zone,
    status_comment character varying(512) COLLATE pg_catalog."default",
    CONSTRAINT pk_digitaltrn_rid PRIMARY KEY (rid)
)
 
TABLESPACE pg_default;
 
ALTER TABLE IF EXISTS digitalcard.digitalcard_transaction
    OWNER to postgres;
 
REVOKE ALL ON TABLE digitalcard.digitalcard_transaction FROM digitalcarduser;
 
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON TABLE digitalcard.digitalcard_transaction TO digitalcarduser;
 
GRANT ALL ON TABLE digitalcard.digitalcard_transaction TO postgres;
 
COMMENT ON TABLE digitalcard.digitalcard_transaction
    IS 'DigitalCard: The DigitalCard share is a functional service that interacts with the ID Repository and collects the user attributes for printing';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.rid
    IS 'RID:  rid is registration id';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.credential_id
    IS 'Credential Id: Credential id generated when distribute credential';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.uin_salted_hash
    IS 'Request: Request json of credential request genrator';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.status_code
    IS 'Status Code: Contains status of request';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.datashareurl
    IS 'Datashare URL: Credential data url';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.issuancedate
    IS 'Issuance Date: Credential issue date';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.cr_by
    IS 'Created By : ID or name of the user who create / insert record';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.cr_dtimes
    IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.upd_by
    IS 'Updated By : ID or name of the user who update the record with new values';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.upd_dtimes
    IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.is_deleted
    IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
 
COMMENT ON COLUMN digitalcard.digitalcard_transaction.del_dtimes
    IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
has context menu


