require_relative "PdfGenerator"
require_relative "HtmlGenerator"
require "pdf/reader"

class Main 
	@@pg = PdfGenerator.new
	@@hg = HtmlGenerator.new
	attr_reader :numOfTests

	def initialize
		@numOfTests = ARGV[0]
	end

	def start
		puts "Gnerating..."
		@numOfTests.to_i.times do |i|
			@@pg.createPdf("test" + (i+1).to_s+".pdf")
			@@hg.createHtml("test" + (i+1).to_s+".html")
		end
		puts"Finished..."
	end
end

main = Main.new
if ARGV.length == 0 || ARGV[0].to_i <= 0
	puts "Wrong arguments; Arument 1 should be > 0"
else
	main.start
end
