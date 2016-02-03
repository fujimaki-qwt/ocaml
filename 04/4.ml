(* 問題4.1 *)
(* 目的 : アルバイトを始めてからの年数と働いた時間を与えて、その月の給与を返す *)
(* baito_kyuyo : int->int->int *)
let baito_kyuyo year time = ( 850 + 100 * year ) * time;;

let test1 = baito_kyuyo 0 10 = 8500
let test2 = baito_kyuyo 5 50 = 67500
 
(* 問題4.2 *)

let jikosyokai name = "僕の名前は" ^ name ^ "だお";;

(* 問題4.3 *)

let hyojun_taiju height = height ** 2. *. 22.;;

(* 問題4.4 *)

let bmi height weight = weight /. ( height ** 2. );;

(* 問題4.1 *)
(* 問題4.1 *)
