(* 問題 12.4 *)
(* ひらがな順に並んだekimei_t型のリストとekimei_tを受け取り、ひらがなの昇順に順に並び替えたekimei_tのリストを返す *)
(* insert_eki : ekimei_t list -> ekimei_t -> ekimei_t list *)
let rec insert_eki lst ekimei0 = match lst with
	[] -> [ekimei0]
|	({kana = kana} as first) :: rest ->
		match ekimei0 with {kana = kana0} ->
			if kana0 = kana
				then insert_eki rest ekimei0
			else if kana0 <= kana
				then ekimei0 :: lst
			else
				first :: insert_eki rest ekimei0

(* ekimei_t型のリストを受け取り、ひらがなの順に並び替え、重複を除いたekimei_tのリストを返す *)
(* seiretsu : ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
	[] -> []
| first :: rest ->
	insert_eki (seiretsu rest) first