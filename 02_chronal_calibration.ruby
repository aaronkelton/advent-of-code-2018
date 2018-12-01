input_string = File.read("02_chronal_calibration.txt")
input_array = input_string.split("\n")
numbers = input_array.map{|number|number.to_i}

global_memo = [0]
reusable_memo = [0]
@result = 0

def process(global_memo, reusable_memo, numbers)
  numbers.each_with_index do |number, i|
    appender = reusable_memo[i] + number
    if global_memo.include?(appender)
      @result = appender
      break
    else
      global_memo << appender
      reusable_memo << appender
    end
  end
  reusable_memo = [reusable_memo[-1]]
  process(global_memo, reusable_memo, numbers) if @result == 0
end

process(global_memo, reusable_memo, numbers)

puts @result
