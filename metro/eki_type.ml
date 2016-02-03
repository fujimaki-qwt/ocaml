(* 問題 8.5 *)
(* 駅名の情報を格納するレコード *)
type ekimei_t = { 
	kanji   : string; (* 駅名 *) 
	kana    : string; (* 読み *) 
	romaji  : string; (* ローマ字 *) 
	shozoku : string; (* 所属線名 *) 
}

(* 問題 8.7 *)
(* 駅と駅の接続情報を格納するレコード *)
type ekikan_t = { 
	kiten  : string; (* 起点 *) 
	shuten : string; (* 終点 *) 
	keiyu  : string; (* 経由線名 *) 
	kyori  : float;  (* 距離 *) 
	jikan  : int;    (* 時間 *) 
}

(* 問題 12.1 *)
(* 駅と駅の接続情報を格納するレコード *)
type eki_t = {
	namae        : string; (* 駅名 *)
	saitan_kyori : float;  (* 最短距離 *)
	temae_list   : string list; (* 一駅前の駅名 *)
}