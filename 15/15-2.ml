(* 問題 15.2 *)
(* 目的 : 自然数を2つ受け取り、その２つの最大公約数を返す（ユークリッドの互除法） *)
(* gcd : int -> int -> int *)

let rec gcd m n =
	if n = 0 
		then m
	else
		gcd n (m mod n)

let test1 = gcd 4 2 = 2
let test2 = gcd 30 4 = 2
let test3 = gcd 390 273 = 39