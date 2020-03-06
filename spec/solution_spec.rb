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

  it "takes 16 and returns [3,5,false]" do
    expect(Solution.resolve(16)).to eq [3,5,false]
  end

  it "takes 104 and returns [8,13, true]" do
    expect(Solution.resolve(104)).to eq [8,13, true]
  end
end
