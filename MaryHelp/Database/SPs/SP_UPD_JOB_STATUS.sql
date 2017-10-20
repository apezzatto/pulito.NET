CREATE DEFINER=`b75188d3b80bd5`@`%` PROCEDURE `SP_UPD_JOB_STATUS`(		
IN  p_id_job			VARCHAR(36)	,
IN  p_id_worker			VARCHAR(36)	,
IN  p_status_job       	INT
)
BEGIN

	UPDATE 	JOB
	SET 	idWorker	= p_id_worker,
			jobOpen		= p_status_job
	WHERE	idJob 		= p_id_job;
    
END