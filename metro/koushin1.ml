(* 問題 13.6 *)
(* 直前に確定した駅と未確定の駅を受け取り、つながっていたら最短距離と手前リストを適宜更新する *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
let koushin1 p q = match (p, q) with
	({namae = p_namae; saitan_kyori = p_saitan_kyori; temae_list = p_temae_list},
	{namae = q_namae; saitan_kyori = q_saitan_kyori; temae_list = q_temae_list}) ->
		let kyori = get_ekikan_kyori p_namae q_namae global_ekikan_list in
			if kyori = infinity
				then q
			else if kyori +. p_saitan_kyori < q_saitan_kyori
				then {namae = q_namae; saitan_kyori = kyori +. p_saitan_kyori; temae_list = q_namae::p_temae_list}
			else
				q

let eki1 = {namae = "茗荷谷"; saitan_kyori = infinity; temae_list = []}
let eki2 = {namae = "新大塚"; saitan_kyori = 0.; temae_list = ["新大塚"]}

let test = koushin1 eki2 eki1