(* eclipseのTopレベルでちゃんと日本語が表示されない *)
(* そのためコマンドラインから実行したいが、メトロのファイルをいちいち全部読み込むのがめんどいので *)
(* ここに読み込む全てのファイルを書く。実行順序に気をつけなければならない *)

# use "eki_type.ml"
# use "global_ekimei_list.ml"
# use "global_ekikan_list.ml"
# use "romaji_to_kanji.ml"
# use "get_ekikan_kyori.ml"
# use "kyori_wo_hyoji.ml"
# use "make_eki_list.ml"
# use "shokika.ml"
# use "seiretsu.ml"
# use "koushin1.ml"
# use "koushin.ml"
# use "saitan_wo_bunri.ml"
# use "dijkstra_main.ml"
# use "dijkstra.ml"