(* 問題 10.2 *)
(* 目的 : 整数リストを受け取り、昇順に並び替えた整数リストを返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
	[] -> []
|	first :: rest ->  
	insert (ins_sort rest) first

let test1 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test2 = ins_sort [1; 1; 4; 7; 8] = [1; 1; 1; 4; 7; 8]
let test2 = ins_sort [2; 1;] = [1; 2]