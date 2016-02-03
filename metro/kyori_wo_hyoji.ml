(* 問題 10.12 *)
(* 目的 : ローマ字の駅名を受け取り、距離を調べ、その2駅間の距離を返す *)
(* kyori_wo_hyoji : string -> string -> string *)

let kyori_wo_hyoji ekimei1 ekimei2 =
	let kanji_eki1 = romaji_to_kanji ekimei1 global_ekimei_list in
	let kanji_eki2 = romaji_to_kanji ekimei2 global_ekimei_list in
	let distance = get_ekikan_kyori kanji_eki1 kanji_eki2 global_ekikan_list in
	if kanji_eki1 = ""
		then ekimei1^" does not exsist in list."
	else if kanji_eki2 = ""
		then ekimei2^" does not exsist in list."
	else if distance = infinity
		then ekimei1^" and "^ekimei2^" is not connected."
	else
		"It is "^string_of_float(distance)^" km from "^kanji_eki1^" to "^kanji_eki2^"."
		
	

let test1 = kyori_wo_hyoji "myogadani" "shinotsuka"
