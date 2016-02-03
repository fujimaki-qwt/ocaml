(* 問題 12.2 *)
(* ekemei_t型のリストを受け取り、eki_t型のリストを返す *)
(* make_eki_list : ekimei_t list -> eki_t list *)

let rec make_eki_list lst = match lst with
	[] -> []
| {kanji = kanji;} :: rest ->
	{namae = kanji; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest