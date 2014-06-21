class TestGenerator
	

	def initialize args
		questNum = args;

	end

	def genSimpleHex diff=0 
		twoNill = 0
		while true
			test = (0x0005 + Random.rand(0xFFFF+1)).to_s(16)
			test.to_s.each_char do |c|
				if c == '0'
					twoNill += 1
				end
			end
			return test if twoNill == diff and test.length == 4
			twoNill = 0
		end

	end
end
