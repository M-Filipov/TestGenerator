require_relative "NumberGenerator"

class TestGenerator < NumberGenerator
	
	@@t = NumberGenerator.new 0
	
	@@orig = @@t.genSimpleHex 2
	@@insert = @@t.genSingleDigitHex
	
	def initialize 
		@testsNum = ARGV[0]
	end
		
	def orType
		shift = genShiftNum 0, false
		a = (@@orig.hex | (@@insert.hex << shift)).to_s(16)
		s = String.new
		s << "a = ? \n"
	    s << "int orig = #{@@orig} \n"
	    s << "int insert = 000#{@@insert} \n"
	    s << "int a = orig | (insert << #{shift}) \n"
	    s << "a = #{a}"
	    puts s
	    puts
	    
	    return s
	end
		
		
	def andType 
		shift = genShiftNum 0, false
		a = (@@orig.hex | (@@insert.hex << shift)).to_s(16)
		shift1 = genShiftNum 0, true
		b = (@@orig.hex | (@@insert.hex << shift1)).to_s(16)
		andd = a.hex & b.hex
		
		s = String.new
		s << "andd = ? \n"
	    s << "int orig = #{@@orig} \n"
	    s << "int insert = 000#{@@insert} \n"
	    s << "int a = orig | (insert << #{shift}) \n"
	   	s << "int b = orig | (insert << #{shift1}) \n"
	   	s << "int andd = a & b \n"
	    s << "andd = #{andd} "
	    puts s
	    puts
	end
	
	
	def xorType 
		shift = genShiftNum 0, true
		a = (@@orig.hex | (@@insert.hex << shift)).to_s(16)
		shift1 = genShiftNum 0, true
		b = (@@orig.hex | (@@insert.hex << shift1)).to_s(16)
		xor = (a.hex ^ b.hex).to_s(16)
		
		s = String.new
		s << "xor = ? \n"
	    s << "int orig = #{@@orig} \n"
	    s << "int insert = 000#{@@insert} \n"
	    s << "int a = orig | (insert << #{shift}) \n"
	   	s << "int b = orig | (insert << #{shift1}) \n"
	   	s << "int xor = a ^ b \n"
	    s << "xor = #{xor} "
	    puts s
	    puts
	end
	
	

	def shestaZad 
		i = @@orig
		shift = genShiftNum 1, true
		left = (i.hex | (1 << shift)).to_s(16)
		
		s = String.new
		s << "left = ? \n"
		s << "int i = #{@@orig} \n"
		s << "int left = #{i} | (1 << #{shift}) \n" 
		s << "left = #{left}"
	
		puts s
	end
	
	
	

end



test = TestGenerator.new

test.orType
test.andType
test.xorType
test.shestaZad
