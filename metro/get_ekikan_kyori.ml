(* 問題 10.11 *)
(* 目的 : 漢字の駅名を2つと駅間リストを受け取り、その2駅間の距離を返す *)
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)

let rec get_ekikan_kyori ekimei1 ekimei2 lst = match lst with
	[] -> infinity
| {kiten = kiten; shuten = shuten; kyori = kyori;} :: rest ->
	if (kiten = ekimei1 && shuten = ekimei2) || (kiten = ekimei2 && shuten = ekimei1)
		then kyori
	else
		get_ekikan_kyori ekimei1 ekimei2 rest

let test1 = get_ekikan_kyori "茗荷谷" "後楽園" global_ekikan_list = 1.8