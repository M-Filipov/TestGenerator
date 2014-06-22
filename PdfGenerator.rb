require "prawn"
require_relative "TestGenerator"

class PdfGenerator < TestGenerator
	@@tg = TestGenerator.new

	def initialize		
	end
	
	def createPdf name
		pdf = Prawn::Document.new
		s = []
		s[0..1] = @@tg.orType
		s[2..3] = @@tg.orType
		s[4..5] = @@tg.andType
		s[6..7] = @@tg.andType
		s[8..9] = @@tg.xorType
		s[10..11] = @@tg.shestaZad
		s[12..13] = @@tg.sevenZad
		s[14..15] = @@tg.osmaZad
		s[16..17] = @@tg.devetaZad
		s[18..20] = @@tg.desetaZad
		s[21..22] = @@tg.eleventh
		s[23..24] = @@tg.twelveth
		
		pdf.text s[0]
		pdf.text s[2]
		pdf.text s[4]
		pdf.text s[6]
		pdf.text s[8]
		pdf.text s[10]
		pdf.text s[12]
		pdf.text s[14]
		pdf.text s[16]
		pdf.text s[18]
		pdf.text s[21]
		pdf.text s[23]
	
		pdf.render_file ("PdfTests/"+name)
		
		pdf = Prawn::Document.new
			
		pdf.text s[1]
		pdf.text s[3]
		pdf.text s[5].to_s
		pdf.text s[7].to_s
		pdf.text s[9].to_s
		pdf.text s[11].to_s
		pdf.text s[13].to_s
		pdf.text s[15].to_s
		pdf.text s[17].to_s
		pdf.text s[19].to_s
		pdf.text s[20].to_s
		pdf.text s[22].to_s
		pdf.text s[24].to_s	
		pdf.render_file ("PdfTests/"+"answers"+name)
		
		
		
	end
	
	
	
	
end
