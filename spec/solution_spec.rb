require 'solution'

describe Solution do
  it "takes 1 and returns [0,1,true]" do
    expect(Solution.resolve(1)).to eq [0,1,true]
  end

  it "takes 0 and returns [0, 1, false]" do
    expect(Solution.resolve(0)).to eq [0,1,false]
  end

  it "takes 6 and returns [2,3,true]" do
    expect(Solution.resolve(6)).to eq [2,3,true]
  end

  it "takes 16 and returns [5,8,false]" do
    expect(Solution.resolve(16)).to eq [5,8,false]
  end

  it "takes 104 and returns [8,13, true]" do
    expect(Solution.resolve(104)).to eq [8,13, true]
  end

  it "takes 714 and returns [21, 34, true]" do
    expect(Solution.resolve(714)).to eq [21, 34, true]
  end

  it "takes 800 and returns [34, 55, false]" do
    expect(Solution.resolve(800)).to eq [34, 55, false]
  end

  it "takes 12816 and returns [89, 144, true]" do
    expect(Solution.resolve(12816)).to eq [89, 144, true]
  end
end
