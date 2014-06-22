require "prawn"
require_relative "TestGenerator"

class PdfGenerator < TestGenerator
	@@tg = TestGenerator.new

	def initialize		
	end
	
	def createPdf name
		pdf = Prawn::Document.new
		f = File.open("TETETETETETest", "w")
		f.puts @@tg.orType
		pdf.text @@tg.orType
		pdf.text @@tg.orType
		pdf.text @@tg.andType
		pdf.text @@tg.andType
		pdf.text @@tg.xorType
		pdf.text @@tg.shestaZad
		pdf.text @@tg.sevenZad
		pdf.text @@tg.osmaZad
		pdf.text @@tg.devetaZad
		pdf.text @@tg.desetaZad
		pdf.text @@tg.eleventh
		pdf.text @@tg.twelveth
		pdf.render_file name
	end
end

# pg = PdfGenerator.new
# ARGV[0].to_i.times do |i|
# 	pg.createPdf("test"+i.to_s)	
# end