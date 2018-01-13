require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  context "三角形であり" do
    it "正三角形である" do
      lines = [1,1,1]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '正三角形ですね！'
    end
    it "二等辺三角形である" do
      lines = [2,2,1]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '二等辺三角形ですね！'
    end
    it "不等辺三角形である" do
      lines = [2,3,4]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '不等辺三角形ですね！'
    end
  end

  context "三角形ではない" do
    it "一辺の長さが他の二辺の長さの和より大きい" do
      lines = [5,2,2]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '三角形じゃないです＞＜'
    end
    it "一辺の長さが他の二辺の長さの和に等しい" do
      lines = [5,2,3]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '三角形じゃないです＞＜'
    end
    it "3辺以上の数値入力" do
      lines = [1,2,3,4]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '三角形じゃないです＞＜'
    end
    it "一辺が0以下の数字の入力(負の場合)" do
      lines = [-1,2,3]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '0以上の数字を入力してください'
    end
    it "一辺が0以下の数字の入力(0の場合)" do
      lines = [1,0,3]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '0以上の数字を入力してください'
    end
    it "3辺全てが0の入力" do
      lines = [0,0,0]
      expect(Triangle.triangle_check(lines[0],lines[1],lines[2])).to eq '0以上の数字を入力してください'
    end
  end
end
