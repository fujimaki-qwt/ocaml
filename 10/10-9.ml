(* 問題 10.9 *)
(* 目的 : 2つのリストを受け取り、その2つの長さが一緒かどうかを返す *)
(* insert : list -> list -> bool *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with
	([], []) -> true
|	([], first2 :: rest2) -> false
| 	(first1 :: rest1, []) -> false
| 	(first1 :: rest1, first2 :: rest2) -> equal_length rest1 rest2

let test1 = equal_length [1; 3] [1] = false
let test2 = equal_length [1; 3] [10; 20] = true
let test3 = equal_length [] [10; 20] = false
let test4 = equal_length [1; 3] [] = false
let test5 = equal_length [1; 3; 2; 7; 4] [10; 20] = false
let test5 = equal_length [1; 3; 2; 7; 4] [10; 20; 30; 40; 50] = true

