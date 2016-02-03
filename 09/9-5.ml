(* 問題9.5 *)
(* 目的 : 整数のリストを受け取り、そのリストの中の偶数の要素のみのリストを返す*)
(* even : int list -> int list *)
let rec even lst = match lst with
	[] -> []
	| first::rest ->
		if first mod 2 = 0 then first :: even rest
		else even rest


let test1 = even [2; 3; 4;] = [2; 4;]
let test2 = even [2;] = [2;]
let test3 = even [100; 20; 333333; 4344444;] = [100; 20; 4344444;]