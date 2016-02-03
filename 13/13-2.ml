(* 問題 13.2 *)
(* person_t型のリストを受け取り、名前のリストを返す *)
(* person_namae : person_t list -> string lst *)
let rec person_namae lst = match lst with
	[] -> []
| {name = name;} :: rest ->
	name :: person_namae rest
	
let test1 = person_namae lst1