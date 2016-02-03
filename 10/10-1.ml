(* 問題 10.1 *)
(* 目的 : 昇順に並んでいる整数リストと整数を受け取り、昇順となる位置に整数を挿入したリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with
	[] -> [n]
|	first :: rest ->
	if n <= first then n :: lst
	else first :: insert rest n

let test1 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
let test2 = insert [1; 1; 4; 7; 8] 1 = [1; 1; 1; 4; 7; 8]
let test3 = insert [1; 4;] 5 = [1; 4; 5]
let test4 = insert [2;] 1 = [1; 2]