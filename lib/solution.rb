class Solution
  def self.resolve(number)
    closest_nums = [0, 1];
    fib_nums = [0, 1, 2, 3, 5, 8, 13]
    fib_nums[0..5].each_with_index { |num, index|
      if num * fib_nums[index + 1] == number
        return [num, fib_nums[index + 1], true]
      elsif (closest_nums.inject(&:*) - number).abs > ([num, fib_nums[index + 1]].inject(&:*) - number).abs
        closest_nums = [num, fib_nums[index + 1]];
      end
    }

    return closest_nums.push(false)
    # number == 6 ? [2,3,true] :
    #   number == 16 ? [3,5,false] :
    #   [0,1,number == 1]
  end
end
