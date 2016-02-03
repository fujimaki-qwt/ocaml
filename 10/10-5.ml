(* 問題 10.5 *)
type gakusei_t = {
	namae   : string;
	tensuu  : int;
	seiseki : string;
}

(* 目的 : gakusei_tのリストを受け取り、最高得点のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
	[] -> {namae = ""; tensuu = min_int; seiseki = ""}
| ({namae = n; tensuu = t; seiseki = s} as gakusei) :: rest ->
	let tmp = gakusei_max rest in
		match tmp with
			{namae = n_max; tensuu = t_max; seiseki = s_max} -> 
				if t >= t_max
					then gakusei
				else
					tmp

let test1 = gakusei_max [
	{namae = "yoshida"; tensuu = 80; seiseki = "A"};
	{namae = "asai"; tensuu = 90; seiseki = "B"};
	{namae = "kaneko"; tensuu = 85; seiseki = "A"};
]