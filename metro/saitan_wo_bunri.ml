(* 問題 15.4 *)
(* eki_t型のリストを受け取り、「最短距離最小の駅」と「最短距離最小の駅以外からなるリスト」を返す *)
(* saitan_wo_bunri : eki_t list -> (eki_t, eki_t list) *)
let rec saitan_wo_bunri lst = match lst with
	[] -> ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])
| first::rest ->
		let (p, v) = saitan_wo_bunri rest in
			match (first, p) with
				({namae = f_namae; saitan_kyori = f_saitan_kyori; temae_list = f_temae_list},
				 {namae = p_namae; saitan_kyori = p_saitan_kyori; temae_list = p_temae_list}) ->
					if p_namae = ""
						then (first, v)
					else if f_saitan_kyori < p_saitan_kyori
						then (first, p::v)
					else
						(p, first::v)


let eki1 = {namae = "茗荷谷"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae = "新大塚"; saitan_kyori = 0.2; temae_list = ["新大塚"]}
let eki3 = {namae = "後楽園"; saitan_kyori = 1.3; temae_list = ["新大塚"]}
let eki4 = {namae = "本郷三丁目"; saitan_kyori = 0.1; temae_list = ["新大塚"]}

let eki = [eki1;eki2;eki3;eki4]


let test = saitan_wo_bunri eki