require "cgi"
require_relative "TestGenerator"

class HtmlGenerator

	def initialize
	@@tg = TestGenerator.new
	end


	def createHtml name
		# puts @@tg.orType
		cgi = CGI.new("html5")
		f =  File.open(name, "w") 
		f.puts cgi.html{
		     		cgi.head{ "\n"+cgi.title{name} } +
		      		cgi.body{ "\n"+
		         		cgi.form{"\n"+
		            		cgi.hr +
		            		cgi.h5 { name+":" } + "\n"+
		            		cgi.p {@@tg.orType} + "\n"+
		            		cgi.p {@@tg.orType} + "\n"+
		            		cgi.p {@@tg.andType} + "\n"+
		            		cgi.p {@@tg.andType} + "\n"+
		            		cgi.p {@@tg.shestaZad} + "\n"+
		            		cgi.p {@@tg.sevenZad} + "\n"+
		            		cgi.p {@@tg.osmaZad} + "\n"+
		            		cgi.p {@@tg.devetaZad} + "\n"+
		            		cgi.p {@@tg.desetaZad} + "\n"+
		            		cgi.p {@@tg.eleventh} + "\n"+
		            		cgi.p {@@tg.twelveth} + "\n"+
		            		cgi.br
		         		}
		      		}
		  		}
		
	end
end


