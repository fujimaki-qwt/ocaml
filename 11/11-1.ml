(* 問題 11.1 *)
(* 目的 : 整数を受け取り、二乗和を返す *)
(* insert : int -> int *)
let rec sum_of_square n =
	if n = 0 then 0
	else n * n + sum_of_square (n - 1)
	
let test1 = sum_of_square 4 = 30
let test2 = sum_of_square 1 = 1
let test3 = sum_of_square 6 = 91