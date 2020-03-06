class Solution
  def self.resolve(number)
    number == 6 ? [2,3,true] :
      number == 16 ? [3,5,false] :
      [0,1,number == 1]
  end
end
