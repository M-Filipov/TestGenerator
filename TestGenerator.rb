class TestGenerator
	

	def initialize args
		questNum = args;

	end

	def genSimpleHex diff=0 
		twoNill = 0
		while true
			temp = (0x0005 + Random.rand(0xFFFF+1)).to_s(16)
			temp.to_s.each_char do |c|
				if c == '0'
					twoNill += 1
				end
			end
			return temp if twoNill == diff and temp.length == 4
			twoNill = 0
		end

	end
	
	def genShiftNum diff=0, odd=true 
		temp = ((3+diff*2) + Random.rand((3+diff*2-1)))*2 + odd = (odd ? 1 : 0)
	end

end


tg = TestGenerator.new 0


# puts tg.genSimpleHex

orig = tg.genSimpleHex 2

while true
	insert = ((tg.genSimpleHex 3).to_i >> 8).to_s(16)
	break if insert.length == 1 and insert != '0'
end

temp = tg.genShiftNum 0, false

a = (orig.hex | (insert.hex << temp)).to_s(16)


puts "a = ? …………."
puts "int orig = #{orig}"
puts "int insert = 000#{insert}"
puts "int a = orig | (insert << #{temp})"
puts "a = #{a}"