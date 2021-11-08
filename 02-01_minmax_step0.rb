# 2変数の最大最小 (paizaランク D 相当)
# https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_step0

INPUT1 = <<~"EOS"
  -11 10
EOS
OUTPUT1 = <<~"EOS"
  10 -11
EOS

def solve1(input_lines)
  ary = input_lines.split.map(&:to_i)

  if ary[0] < ary[1]
    ary[0], ary[1] = ary[1], ary[0]
  end
  ary.join(" ")
end

# puts solve1(STDIN.read)
# puts solve1(INPUT1)
# 10 -11

def solve2(input_lines)
  ary = input_lines.split.map(&:to_i)

  ary.minmax.reverse.join(" ")
end

# puts solve2(STDIN.read)
puts solve2(INPUT1)
# 10 -11

=begin
2変数の最大最小 (paizaランク D 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/sequence_search_problems/sequence_search_problems_minmax_step0
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
2つの整数 a_1, a_2 が与えられます。

これらの最大値と最小値をこの順に半角スペース区切りで出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
a_1 a_2

・ 1行に、a_1, a_2 が半角スペース区切りで与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
最大値と最小値をこの順に半角スペース区切りで1行に出力してください。
また、末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 入力は全て整数
・ -1,000,000,000 ≦ a_i ≦ 1,000,000,000

入力例1
-11 10

出力例1
10 -11
=end
