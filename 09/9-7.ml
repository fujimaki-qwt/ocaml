(* 問題9.7 *)
type person_t = {
	height : float;				(* 身長 *)
	weight : float;				(* 体重 *)
	birth_date : string;		(* 誕生日 *)
	blood_type : string;		(* 血液型 *)
}

let lst1 = [
		{height = 1.73; weight = 70.0; birth_date = "1990/09/25"; blood_type = "A"};
		{height = 1.33; weight = 43.5; birth_date = "1992/12/05"; blood_type = "B"};
		{height = 1.23; weight = 103.5; birth_date = "1978/06/15"; blood_type = "AB"};
		{height = 1.81; weight = 63.5; birth_date = "1998/06/15"; blood_type = "A"};
		]

(* 目的 : person_t型のリストを受け取り、A型の人数を返す*)
(* even : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
	[] -> 0
	| {height = h; weight = w; birth_date = b_d; blood_type = b_t} :: rest
		-> if b_t = "A" then 1 + count_ketsueki_A rest
			else count_ketsueki_A rest

let test1 = count_ketsueki_A lst1 = 2