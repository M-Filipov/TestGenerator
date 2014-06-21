require_relative "NumberGenerator"

class TestGenerator < NumberGenerator
	
	@@t = NumberGenerator.new 0
	
	@@orig = @@t.genSimpleHex 2
	@@insert = @@t.genSingleDigitHex
	
	def initialize 
		@testsNum = ARGV[0]
	end
		
	def firstType
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
		
		
	def secondType 
		shift = genShiftNum 0, false
		a = (@@orig.hex | (@@insert.hex << shift)).to_s(16)
		shift1 = genShiftNum 0, false
		b = (@@orig.hex | (@@insert.hex << shift1)).to_s(16)
		andd = a.hex & b.hex
		
		s = String.new
		s << "a = ? \n"
	    s << "int orig = #{@@orig} \n"
	    s << "int insert = 000#{@@insert} \n"
	    s << "int a = orig | (insert << #{shift}) \n"
	   	s << "int b = orig | (insert << #{shift1}) \n"
	   	s << "int andd = a & b \n"
	    s << "andd = #{andd} "
	    puts s
	    puts
	end
	
	


end



test = TestGenerator.new

test.firstType
test.secondType


