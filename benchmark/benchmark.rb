
require 'benchmark'
string = "a"
number = 1
Benchmark.bm do |b|
  b.report("String 1-25: \n") do
  	25.times do |n|
    puts string += "a"
	end  
  end
end

Benchmark.bm do |b|
	b.report("Number 1-25: \n") do
		25.times do |n| 
		puts number += 1
		end
	end


	end