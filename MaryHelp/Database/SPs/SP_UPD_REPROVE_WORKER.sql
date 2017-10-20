CREATE DEFINER=`b75188d3b80bd5`@`%` PROCEDURE `SP_UPD_REPROVE_WORKER`(
IN  p_id_job			VARCHAR(36)
)
BEGIN

	UPDATE 	JOB
	SET 	jobOpen		= 1,
			idWorker 	= null
	WHERE	idJob 		= p_id_job;
    
END