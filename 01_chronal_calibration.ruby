input_string = File.read("01_chronal_calibration.txt")
input_array = input_string.split("\n")
numbers = input_array.map{|number|number.to_i}
result = numbers.sum
puts result
