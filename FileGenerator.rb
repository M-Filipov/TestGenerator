require "prawn"
require "cgi"
require_relative "TestGenerator"

class FileGenerator
	@@tg = TestGenerator.new

		attr_reader:s 
	def initialize		
		@s = getTests
	end
	
	def createAll name
		createPdf name, 0
		createPdf name, 1
		createHtml name, 0
		createHtml name, 1
	end


private
	def createPdf name, i
		pdf = Prawn::Document.new(:page_layout => :landscape)
		drawText pdf, name
		pdf.table(
			[
				[@s[i], @s[i+2]],
		    	[@s[i+4], @s[6]],
		    	[@s[i+8], @s[i+10]],
		    	[@s[i+12], @s[i+14]],
		    	[@s[i+16], @s[i+18]],
		    	[@s[i+20], @s[i+22]]
		    ], :width => 700)
		if(i==0)
			pname = "PdfTests/"+name+".pdf"
		else
			pname = "PdfTests/"+"answers"+name+".pdf"
		end

		pdf.render_file (pname)
	end

	def drawText pdf, name
		pdf.text "<font size='24'>ELSYS</font>", getOptions
		pdf.text "<font size='24'>Bitwise Operations</font>", getOptions
		pdf.text "<font size='22'>"+name+"</font>", getOptions
	end

	def getOptions
		options = {
			:inline_format => true,
			:align => :center		
		}
	end

	def getTests
		@s = []
		@s[0..1] = @@tg.orType
		@s[2..3] = @@tg.orType
		@s[4..5] = @@tg.andType
		@s[6..7] = @@tg.andType
		@s[8..9] = @@tg.xorType
		@s[10..11] = @@tg.shestaZad
		@s[12..13] = @@tg.sevenZad
		@s[14..15] = @@tg.osmaZad
		@s[16..17] = @@tg.devetaZad
		@s[18..19] = @@tg.desetaZad
		@s[20..21] = @@tg.eleventh
		@s[22..23] = @@tg.twelveth
		return s
	end

	def createHtml name, i
		name+=".html"
		cgi = CGI.new("html4")
		if i==1
			f =  File.open("HtmlTests/"+"answers"+name, "w")
		else
			f =  File.open("HtmlTests/"+name, "w")
		end
		f.puts cgi.html{
		     		cgi.head{ "\n"+cgi.title{name} } +
		      		cgi.body{ "\n"+
		         		cgi.form{"\n"+
		            		cgi.hr +
		            		cgi.h2 { name.gsub(/.html/,"").upcase+":" } +
		            		cgi.pre {@s[i]} + 
		            		cgi.pre {@s[i+2]} + cgi.br+ 
		            		cgi.pre {@s[i+4]} + cgi.br+ 
		            		cgi.pre {@s[i+6]} + cgi.br+ 
		            		cgi.pre {@s[i+8]} + cgi.br+ 
		            		cgi.pre {@s[i+10]} + cgi.br+ 
		            		cgi.pre {@s[i+12]} + cgi.br+ 
		            		cgi.pre {@s[i+14]} + cgi.br+ 
		            		cgi.pre {@s[i+16]} + cgi.br+ 
		            		cgi.pre {@s[i+18]} + cgi.br+ 
		            		cgi.pre {@s[i+20]} + cgi.br+ 
		            		cgi.pre {@s[i+22]} + cgi.hr+
		            		cgi.pre {"\n"} +
		            		cgi.hr

		         		}
		      		}
		  		}
	end
	
	
	
end
