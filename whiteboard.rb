puts "hello user, how many prime numbers do you want?"

#need to divide "num" by all the numbers in the newly made prime_arr.
#maybe try to determine whole number from remainders by distinguishing them by intgers and floats.

request = gets.chomp.to_i
prime_arr = [2]
num = 1
until prime_arr.length == request do
  num += 1
  counter = prime_arr.length
  index = counter - 1
  p counter
  counter.times do
    if index < 0
      prime_arr << num
      break
    elsif num % counter[index] 
      index -= 1
    else
      break
    end
  end
end

p prime_arr