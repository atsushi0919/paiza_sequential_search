# 【最大最小】n 変数の最大最小 (paizaランク C 相当)
# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_boss

INPUT1 = <<~"EOS"
  5
  10 -19 14 8 -90
EOS
OUTPUT1 = <<~"EOS"
  14 -90
EOS

def solve1(input_lines)
  n, *ary = input_lines.split.map(&:to_i)

  max_val = -Float::INFINITY
  min_val = Float::INFINITY
  ary.each do |val|
    if max_val < val
      max_val = val
    end
    if min_val > val
      min_val = val
    end
  end
  [max_val, min_val].join(" ")
end

# puts solve1(STDIN.read)
# puts solve1(INPUT1)
# 14 -90

def solve2(input_lines)
  ary = input_lines.split.map(&:to_i)

  ary.minmax.reverse.join(" ")
end

# puts solve2(STDIN.read)
# puts solve2(INPUT1)
# 14 -90

=begin
【最大最小】n 変数の最大最小 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_boss
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
整数 n と、数列 a_1, ... , a_n が与えられます。

数列の最大値と最小値をこの順に半角スペース区切りで出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
n
a_1 a_2 ... a_n

・ 1行目に数列の長さを表す整数 n が与えられます。
・ 2行目に、数列の値 a_i が先頭から順に半角スペース区切りで与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
数列の最大値と最小値をこの順に半角スペース区切りで出力してください。
また、末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 入力は全て整数
・ 1 ≦ n ≦ 10,000
・ -1,000,000,000 ≦ a_i ≦ 1,000,000,000

入力例1
5
10 -19 14 8 -90

出力例1
14 -90
=end
