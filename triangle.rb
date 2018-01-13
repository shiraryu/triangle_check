class Triangle
  def self.triangle_check(a,b,c)
    if a > 0 && b > 0 && c > 0
      if a < b + c && b < a + c && c < a + b
        result = case
          when a === b && a === c && b === c
            "正三角形ですね！"
          when a === b || b === c || a === c
            "二等辺三角形ですね！"
          else
            "不等辺三角形ですね！"
        end
        result
      else
        "三角形じゃないです＞＜"
      end
    else
      "0以上の数字を入力してください"
    end
  end
  triangle_check(a = ARGV[0].to_i,b = ARGV[1].to_i,c = ARGV[2].to_i)
end

#a = ARGV[0]
#b = ARGV[1]
#c = ARGV[2]
