(* 問題 10.10 *)
(* 目的 : ローマ字の駅名と駅名リストを受け取り、その駅の漢字を返す *)
(* romaji_to_kanji : string -> ekimai_t list -> string *)

let rec romaji_to_kanji ekimei_romaji lst = match lst with
	[] -> ""
| {kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku} :: rest ->
	if romaji = ekimei_romaji
		then kanji
	else
		romaji_to_kanji ekimei_romaji rest
	
let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test2 = romaji_to_kanji "hirai" global_ekimei_list = ""