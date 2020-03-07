class Solution
  # commented thought process:
  def self.resolve(number)
    return [0,1,number == 1] if number < 2

    @fib_nums = [] # clean out old numbers every method call (Class instance variable)
    self.fib number # generates relevant fibonacci numbers

    closest_nums = [0, 1]; # initial numbers
    last_nums = false;

    # this loop checks the kata rule against all but last number
    # (as there is no 'next' number after it):
    @fib_nums[0..-2].each_with_index { |num, index|
      new_pair = [num, @fib_nums[index + 1]]
      new_product = num * @fib_nums[index + 1]

      # happy path:
      if new_product == number
        return new_pair.push true
      # is the new pair 'more correct?' if so then keep track of it:
      elsif self.new_pair_is('closer', closest_nums, new_pair, number)
        closest_nums = new_pair;
      end

      # keep track of last compared pair
      # for evaluation purposes:
      last_nums = new_pair

      # is the new pair 'less correct?' if so then stop iterating:
      break if self.new_pair_is('further', closest_nums, new_pair, number) 
    }

    # see private methods:
    self.evaluate_highest_adjacent_false_result closest_nums, last_nums
  end

  # helper function for 'less correct' and 'more correct' checks
  def self.new_pair_is proximity, closest, last, number
    case proximity
    when 'closer' then return (closest.inject(&:*) - number).abs > (last.inject(&:*) - number).abs
    when 'further' then return (closest.inject(&:*) - number).abs < (last.inject(&:*) - number).abs
    end
  end

  # fibonacci number generator
  def self.fib num
    a = 0; b = 1; last = 0
    (last = a + b; a = b; b = last; @fib_nums.push b) while last < num
  end

  # "If you don't find two consecutive F(m) verifying F(m) * F(m+1) = prodyou will return"
  # "[F(m), F(m+1), false] or {F(n), F(n+1), 0} or (F(n), F(n+1), False)"
  # "F(m) being the smallest one such as F(m) * F(m+1) > prod.":
  
  def self.evaluate_highest_adjacent_false_result closest_nums, last_nums
    closest_product = closest_nums.inject(&:*)
    last_product = last_nums.inject(&:*)

    closest_product < last_product ? last_nums.push(false) : closest_nums.push(false)
  end
end
