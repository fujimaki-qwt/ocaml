(* 問題 13.7 *)
(* 直前に確定した駅と未確定の駅リストを受け取り、必要な更新処理を行った後未確定の駅のリストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v = List.map (koushin1 p) v