type report_t = {report_type : string; operator_eval : string}

let rec count_real lst = match lst with
	[] -> 0
|	first :: rest -> (match first with
{report_type = r_t; operator_eval = e}
-> if r_t = "real" then 1 + count_real rest
else count_real rest)