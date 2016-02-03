(* 問題 11.2 *)
(* 目的 : 整数nを受け取り、数列の第n項を返す *)
(* insert : int -> int *)
let rec a n =
	if n = 0 then 3
	else 2 * a (n -1) - 1
	
let test1 = a 1 = 5
let test2 = a 5 = 65
