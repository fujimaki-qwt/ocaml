(* 問題9.4 *)
(* 目的 : 整数のリストを受け取り、そのリストの長さを返す *)
(* count_int : int list -> int *)
let rec length lst = match lst with
	[] -> 0
|	first :: rest -> 1 + length rest

let test1 = length [2; 1; 6; 4; 7;] = 5
let test1 = length [] = 0