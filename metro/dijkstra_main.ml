(* 問題 16.4 *)
(* eki_t型の未確定リストとekikan_tリストを受け取り、各駅について最短距離と最短経路が正しく入ったリストを返す *)
(* global_ekikan_kyori を指定しているので引数が一つ少ない *)
(* saitan_wo_bunri : eki_t list -> ekikan_t list -> eki_t list *)
let rec dijkstra_main eki_list = match eki_list with
	[] -> []
| first::rest ->
		let (saitan, nokori) = saitan_wo_bunri (first::rest) in
		let ekikan_list2 = koushin saitan nokori in
			saitan :: dijkstra_main ekikan_list2




let eki1 = {namae = "茗荷谷"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae = "新大塚"; saitan_kyori = infinity; temae_list = []}
let eki3 = {namae = "後楽園"; saitan_kyori = infinity; temae_list = []}
let eki4 = {namae = "本郷三丁目"; saitan_kyori = 0.1; temae_list = []}

let eki = [eki1;eki2;eki3;eki4]

let ekikan1 = {kiten="三ノ輪"; shuten="南千住"; keiyu="日比谷線"; kyori=0.8; jikan=2}
let ekikan2 = {kiten="南千住"; shuten="北千住"; keiyu="日比谷線"; kyori=1.8; jikan=3}
let ekikan3 = {kiten="池袋"; shuten="新大塚"; keiyu="丸ノ内線"; kyori=1.8; jikan=3}
let ekikan4 = {kiten="新大塚"; shuten="茗荷谷"; keiyu="丸ノ内線"; kyori=1.2; jikan=2}
let ekikan5 = {kiten="茗荷谷"; shuten="後楽園"; keiyu="丸ノ内線"; kyori=1.8; jikan=2}
let ekikan6 = {kiten="後楽園"; shuten="本郷三丁目"; keiyu="丸ノ内線"; kyori=0.8; jikan=1}
let ekikan7 = {kiten="本郷三丁目"; shuten="御茶ノ水"; keiyu="丸ノ内線"; kyori=0.8; jikan=1}

let ekikan = [ekikan1;ekikan2;ekikan3;ekikan4;ekikan5;ekikan6;ekikan7]

let test = dijkstra_main eki