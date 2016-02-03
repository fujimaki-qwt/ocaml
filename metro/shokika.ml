(* 問題 12.3 *)
(* eki_t型のリストと起点を受け取ったら、初期化されたeki_t型のリストを返す *)
(* shokika : eki_t list -> string -> eki_t list *)
let rec shokika lst kiten0 = match lst with
	[] -> []
| ({namae = namae; saitan_kyori = saitan_kyori; temae_list = temae_list} as first) :: rest ->
	if namae = kiten0
		then {namae = namae; saitan_kyori = 0.0; temae_list = [namae]} :: shokika rest kiten0
	else
		first :: shokika rest kiten0

let lst1 =
	[
		{namae = "茗荷谷"; saitan_kyori = infinity; temae_list = []};
		{namae = "新大塚"; saitan_kyori = infinity; temae_list = []};
	]
	
let test1 = shokika lst1 "新大塚"