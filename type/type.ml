type gakusei_t = {
	namae   : string;
	tensuu  : int;
	seiseki : string;
}

type person_t = {
	name : string;					(* 名前 *)
	height : float;				(* 身長 *)
	weight : float;				(* 体重 *)
	birth_date : string;	(* 誕生日 *)
	blood_type : string;	(* 血液型 *)
}

let lst1 = 
	[
		{name = "Suzuki"; height = 173.2; weight = 60.4; birth_date = "1990/10/23"; blood_type = "A"};
		{name = "Tanaka"; height = 163.5; weight = 69.3; birth_date = "1930/02/12"; blood_type = "B"};
		{name = "Watanabe"; height = 132.3; weight = 42.8; birth_date = "2002/08/29"; blood_type = "O"};
		{name = "Ando"; height = 190.1; weight = 90.5; birth_date = "1999/05/05"; blood_type = "A"};
	]