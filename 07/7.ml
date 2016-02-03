(* 問題 7.1 *)
(* 目的:5教科の点数を受け取り、合計点と平均点を返す*)
(* goukei_to_heikin : (int, int, int, int ,int) -> (int, float) *)

let goukei_to_heikin tensu = match tensu with
    (a, b, c, d, e) -> ((a+b+c+d+e), (a+b+c+d+e)/5)

let test1 = goukei_to_heikin (1,1,1,1,1) = (5,1)

(* 問題 7.1 *)
(* 問題 7.1 *)
(* 問題 7.1 *)
(* 問題 7.1 *)
