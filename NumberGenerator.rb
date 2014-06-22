require "prawn"

class NumberGenerator
	

	def initialize args
	end



	def genSimpleHex diff=0
		return puts "Error: argument 1 should be 0-#{4}" if diff < 0 || diff >= 4
		twoNill = 0
		while true
			temp = ((0x0001) + Random.rand(0xFFFF)).to_s(16)
			temp.to_s.each_char do |c|                         
				if c == '0'
					twoNill += 1
				end
			end
			return temp if twoNill == diff and temp.length == 4
			twoNill = 0
		end

	end
	def genComplexHex dif=0
		temp = genSimpleHex dif
		result = temp+temp
	end

	def genDec diff=0
		diffic = 100
		diffic+= diff*100
		(100+diff*100) + Random.rand(diffic)
	end


	def genSingleDigitHex 
		while true
			temp = ((genSimpleHex 3).to_i >> 8).to_s(16)
			break if temp.length == 1 and temp != '0'
		end
		return temp
	end
	

	def genShiftNum diff=0, odd=true
		temp = ((2+diff*2) + Random.rand((3+diff*2)))*2 + odd = (odd ? 1 : 0)
	end

end

puts "Processing..."