class Solution
  def self.resolve(number)
    return [0,1,number == 1] if number < 2
    
    fib_nums = [0, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    closest_nums = [0, 1];
    last_nums = false;

    fib_nums[0..-2].each_with_index { |num, index|
      new_pair = [num, fib_nums[index + 1]]

      if num * fib_nums[index + 1] == number
        return new_pair.push true
      elsif self.new_pair_is_closer?(closest_nums, new_pair, number)
        closest_nums = new_pair;
      end

      last_nums = new_pair
      break if self.new_pair_is_further?(closest_nums, new_pair, number) 
    }

    closest_product = closest_nums.inject(&:*)
    last_product = last_nums.inject(&:*)

    closest_product < last_product ? last_nums.push(false) : closest_nums.push(false)
  end

  def self.new_pair_is_closer? closest, last, number
    (closest.inject(&:*) - number).abs > (last.inject(&:*) - number).abs
  end

  def self.new_pair_is_further? closest, last, number
    (closest.inject(&:*) - number).abs < (last.inject(&:*) - number).abs
  end
end
