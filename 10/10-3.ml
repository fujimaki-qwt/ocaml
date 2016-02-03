(* 問題 10.3 *)
type gakusei_t = {
	namae   : string;
	tensuu  : int;
	seiseki : string;
}

(* insert_gakusei : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec insert_gakusei lst gakusei0 = match lst with
	[] -> [gakusei0]
|	({namae = n; tensuu = t; seiseki = s} as gakusei) :: rest ->
		match gakusei0 with {namae = n0; tensuu = t0; seiseki = s0} ->
			if n0 < n
				then gakusei0 :: lst
			else
				gakusei :: insert_gakusei rest gakusei0

(* 目的 : gakusei_tのリストを受け取り、tensuu昇順に並び替えた整数リストを返す *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
		[] -> []
	| first :: rest ->
		insert_gakusei (gakusei_sort rest) first


let test1 = gakusei_sort [
		{namae = "yoshida"; tensuu = 80; seiseki = "A"};
		{namae = "asai"; tensuu = 70; seiseki = "B"};
		{namae = "kaneko"; tensuu = 85; seiseki = "A"};
	]