require_relative "FileGenerator"
require "pdf/reader"

class Main 
	@@pg = FileGenerator.new
	attr_reader :numOfTests

	def initialize
		@numOfTests = ARGV[0]
	end

	def start
		createDirectories
		puts "Gnerating..."
		puts "creating PDF files into PdfTests/"
		puts "creating HTML files into HtmlTests/"
		@numOfTests.to_i.times do |i|
			@@pg.createAll("Test" + (i+1).to_s)
		end

		puts"Finished..."
	end

	
	def directoryExists? directory 
  		File.directory? directory
	end

	def createDirectories
		pdfDir = "PdfTests"
		htmlDir = "HtmlTests"
		`mkdir #{pdfDir}` if !(directoryExists? pdfDir)
		`mkdir #{htmlDir}` if !(directoryExists? htmlDir)

	end

end

main = Main.new

if ARGV.length == 0 || ARGV[0].to_i <= 0
	puts "Wrong arguments; Arument 1 should be > 0"
else
	main.start
end
