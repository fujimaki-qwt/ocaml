(* 問題9.6 *)
(* 目的 : 文字列のリストを受け取り、その文字の結合系を返す*)
(* even : string list -> string *)
let rec concat lst = match lst with
	[] -> ""
	| first::rest -> first ^ concat rest

let test1 = concat ["あ"; "い"; "う";] = "あいう"