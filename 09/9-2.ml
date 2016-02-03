(* 問題9.2 *)
type person_t = {
	height : float;				(* 身長 *)
	weight : float;				(* 体重 *)
	birth_date : string;	(* 誕生日 *)
	blood_type : string;	(* 血液型 *)
}

{height = 1.73; weight = 70.0; birth_date = "1990/09/25"; blood_type = "A"} :: 
{height = 1.73; weight = 70.0; birth_date = "1990/09/25"; blood_type = "A"} ::
{height = 1.73; weight = 70.0; birth_date = "1990/09/25"; blood_type = "A"} :: []
