SELECT UseCounts, Cacheobjtype, Objtype, [TEXT], query_plan, p.*, t.*, qp.*
FROM sys.dm_exec_cached_plans p
CROSS APPLY sys.dm_exec_sql_text(plan_handle) t
CROSS APPLY sys.dm_exec_query_plan(plan_handle) qp
where [text] like '%stage_empower_loan_measures%'
order by p.usecounts desc