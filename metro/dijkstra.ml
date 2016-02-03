(* 問題 16.5 *)
(* 始点と終点の駅名をローマ字で受け取り、最短路が求まったeki_tのレコードを返す *)
(* dijkstra : string -> string -> eki_t *)
let rec kekka lst syuten = match lst with
		[] -> 0.0
	| {namae = namae; saitan_kyori = saitan_kyori; temae_list = temae_list;}::rest ->
		if namae = syuten
			then saitan_kyori
		else
			kekka rest syuten
			
let dijkstra siten_romaji syuten_romaji = 
	let ekikan_list = seiretsu global_ekimei_list in
	let siten_kanji = romaji_to_kanji siten_romaji global_ekimei_list in
	let syuten_kanji = romaji_to_kanji syuten_romaji global_ekimei_list in
	(*shokika (make_eki_list ekikan_list) siten_kanji*)
	let saitan_keiro = dijkstra_main (shokika (make_eki_list ekikan_list) siten_kanji ) in
		siten_kanji ^ "から" ^ syuten_kanji ^ "までの最短距離は" ^ string_of_float(kekka saitan_keiro syuten_kanji) ^ "kmです"
		(*siten_kanji, syuten_kanji*)
		
		
let test = dijkstra "korakuen" "ochanomizu"