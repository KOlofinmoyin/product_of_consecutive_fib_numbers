require 'solution'

describe Solution do
  it "takes 1 and returns [0,1,true]" do
    expect(Solution.resolve(1)).to eq [0,1,true]
  end

  it "takes 0 and returns [0, 1, false]" do
    expect(Solution.resolve(0)).to eq [0,1,false]
  end
end
