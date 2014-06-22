require "prawn"
require_relative "TestGenerator"

class PdfGenerator < TestGenerator
	@@tg = TestGenerator.new

	def initialize		
	end
	
	def createPdf name
		pdf = Prawn::Document.new
		pdf.text @@tg.orType[0]
		pdf.text @@tg.orType[0]
		pdf.text @@tg.andType[0]
		pdf.text @@tg.andType[0]
		pdf.text @@tg.xorType[0]
		pdf.text @@tg.shestaZad[0]
		pdf.text @@tg.sevenZad[0]
		pdf.text @@tg.osmaZad[0]
		pdf.text @@tg.devetaZad[0]
		pdf.text @@tg.desetaZad[0]
		pdf.text @@tg.eleventh[0]
		pdf.text @@tg.twelveth[0]
		pdf.render_file ("PdfTests/"+name)
	end
end