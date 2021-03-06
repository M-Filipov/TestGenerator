	require_relative "NumberGenerator"


	class TestGenerator < NumberGenerator
		
		def initialize 
		end
	
		@@t = NumberGenerator.new 0
		
		def orType
			orig = @@t.genSimpleHex 2
			insert = @@t.genSingleDigitHex
			shift = genShiftNum 0, false
			a = (orig.hex | (insert.hex << shift)).to_s(16)
			s = String.new
			s << "a = ? \n"
			s << "int orig = #{orig} \n"
			s << "int insert = 000#{insert} \n"
			s << "int a = orig | (insert << #{shift}) \n"
				
			answer =  s + "a = 0x#{a} \n\n"	
			return [s,answer]
		end
		
		
		def andType 
			orig = @@t.genSimpleHex 2
			insert = @@t.genSingleDigitHex
			shift = genShiftNum 0, false
			a = (orig.hex | (insert.hex << shift)).to_s(16)
			shift1 = genShiftNum 0, true
			b = (orig.hex | (insert.hex << shift1)).to_s(16)
			andd = (a.hex & b.hex)
		
			s = String.new
			s << "AND = ? \n"
			s << "int orig = #{orig} \n"
			s << "int insert = 000#{insert} \n"
			s << "int a = orig | (insert << #{shift}) \n"
		   	s << "int b = orig | (insert << #{shift1}) \n"
		   	s << "int andd = a & b "
			answer = s + "AND = #{andd} \n\n"
			return [s,answer]
		end
	
	
		def xorType 
			orig = @@t.genSimpleHex 2
			insert = @@t.genSingleDigitHex
			shift = genShiftNum 0, true
			a = (orig.hex | (insert.hex << shift)).to_s(16)
			shift1 = genShiftNum 0, true
			b = (orig.hex | (insert.hex << shift1)).to_s(16)
			xor = (a.hex ^ b.hex).to_s(16)
		
			s = String.new
			s << "XOR = ? \n"
			s << "int orig = #{orig} \n"
			s << "int insert = 000#{insert} \n"
			s << "int a = orig | (insert << #{shift}) \n"
		   	s << "int b = orig | (insert << #{shift1}) \n"
		   	s << "int XOR = a ^ b \n"
			answer = s + "XOR = #{xor} \n\n"
			return [s,answer]
		end
	
	

		def shestaZad 
			orig = @@t.genSimpleHex 2
			insert = @@t.genSingleDigitHex
			i = orig
			shift = genShiftNum 1, true
			left = (i.hex | (1 << shift)).to_s(16)
		
			s = String.new
			s << "left = ? \n"
			s << "int i = #{orig} \n"
			s << "int left = #{i} | (1 << #{shift}) \n" 
			answer = s + "left = #{left} \n\n"
			return [s,answer]
		end
	
	
		def sevenZad 

			value1 = genComplexHex 2
			value2 =  genComplexHex 1
			shift1 = genShiftNum 0, true
			shift2 = genShiftNum 0, false
			test = value1.hex
			result = ( (value1.to_i(16) << shift1) ^ (value2.hex >> shift2) ).to_s(16)
			
			
			s = String.new
			s << "result = ? \n"
			s << "long value1 = #{value1} \n"
			s << "long value2 = #{value2} \n"
			s << "int result = (#{value1} << #{shift1}) ^ (#{value2} >> #{shift2}) \n "		
			answer = s + "result = #{result} \n\n"
			return [s,answer]
		
		end
	
	
	
		def osmaZad 
			value1 = genDec 1
			value2 = genDec 2
			shift1 = genShiftNum 0, false
			shift2 = genShiftNum 0, true
			result = ((value1 << shift1) ^ (value2 >> shift2)).to_s(16)
		
			s = String.new
			s << "result = ? \n"
			s << "value1 = #{value1} \n" 
			s << "value2 = #{value2} \n"
			s << "int result = (value1 << #{shift1}) ^ (value2 >> #{shift2})\n "	
			answer = s + "result = #{result} \n\n"
			return [s,answer]
		end
	
	
	
	
		def devetaZad 
			testValue = @@t.genComplexHex 2
			a = 0
			shift = genShiftNum 0, false
			if(testValue.hex & (0x1 << shift))
				a = 1
			else
				a = 2
			end
		
			s = String.new
			s << "a = ?\n"
			s << "long testValue = #{testValue} \n"
			s << "int a = 0 \n"
			s << "if (testValue & (1 << #{shift}))
{
a = 1
}
else
{
a = 2
} \n"
		answer = s + "a = #{a}\n\n"
			return [s,answer]
		end
	
	
	
	def desetaZad 
		a = 0
		result = 0
		testValue = @@t.genComplexHex 2
		shift = genShiftNum 0, false
		if( (result = testValue.hex & testValue.hex ^ testValue.hex | (0x1 << shift)) )
			a = 1
		else
			a = 2
		end
		result = result.to_s(16)
		
		s = String.new
		s << "result = ? \n"
		s << "a = 0 \n"
		s << "result = 0\n"
		s << "if( (result = testValue & testValue ^ testValue | (1 << #{shift}) )
{
a = 1;
}
else
{
a = 2
}  \n "
	
	answer = s + "a == #{a} \n\n"
	return [s,answer]
	end
	
	
	def eleventh
		value1 = genDec 1
		value2 = genDec 5
		shift1 = genShiftNum 0, true
		shift2 = genShiftNum 0, false		
		result = ( (value1 << shift1) ^ (value2 >> shift2) ).to_s(16)
		
		s = String.new
		s << "result = ? \n"
		s << "int value1 = #{value1} \n"
		s << "int value2 = #{value2} \n"
		s << "int result = ( (value1 << #{shift1}) ^ (value2 >> #{shift2}) ) \n" 

		answer = s + "result = #{result} \n\n"
		return [s,answer]
	end
	
	
	
	def twelveth
		value1 = genDec 3
		value2 = genDec 35
		shift1 = genShiftNum 0, false
		shift2 = genShiftNum 0, true		
		result = ( (value1 << shift1) ^ (value2 >> shift2) ).to_s(16)
		
		s = String.new
		s << "result = ? \n"
		s << "int value1 = #{value1} \n"
		s << "int value2 = #{value2} \n"
		s << "int result = ( (value1 << #{shift1}) ^ (value2 >> #{shift2}) ) \n" 

		answer = s + "result = #{result}\n\n"
		return [s,answer]
	end
	
	
	

end