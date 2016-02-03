(* 問題 13.1 *)
(* person_t型のリストを受け取り、指定された血液型の人の数を返す *)
(* count_ketsueki : person_t -> string -> int *)
let rec count_ketsueki lst ketsueki = match lst with
	[] -> 0
| {blood_type = b} :: rest ->
	if b = ketsueki
		then 1 + count_ketsueki rest ketsueki
	else
		count_ketsueki rest ketsueki

let lst1 = 
	[
		{height = 173.2; weight = 60.4; birth_date = "1990/10/23"; blood_type = "A"};
		{height = 163.5; weight = 69.3; birth_date = "1930/02/12"; blood_type = "B"};
		{height = 132.3; weight = 42.8; birth_date = "2002/08/29"; blood_type = "O"};
		{height = 190.1; weight = 90.5; birth_date = "1999/05/05"; blood_type = "A"};
	]
	
let test1 = count_ketsueki lst1 "AB" = 2;