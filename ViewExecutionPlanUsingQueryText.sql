SELECT UseCounts, Cacheobjtype, Objtype, [TEXT], query_plan, p.*, t.*, qp.*
FROM sys.dm_exec_cached_plans p
CROSS APPLY sys.dm_exec_sql_text(plan_handle) t
CROSS APPLY sys.dm_exec_query_plan(plan_handle) qp
where [text] like '%INSERT INTO dbo.stage_fact_loan%'