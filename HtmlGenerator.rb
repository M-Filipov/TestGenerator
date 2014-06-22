require "cgi"
require "pdf/reader"
require_relative "TestGenerator"

class HtmlGenerator


	def initialize
		@@tg = TestGenerator.new
	end


	def createHtml name
		s = []
		f = File.open(name.gsub(/.html/, ".txt"), "w")
		PDF::Reader.open(name.gsub(/.html/, ".pdf") { |match|  }) do |reader|
		  reader.pages.each do |page|
		  	f.puts page.text
			end
		end
		f.close
		i=0
		txtName = name.gsub(/.html/, ".txt")
		f = File.open(name.gsub(/.html/, ".txt"), "r")
		f.each_line do |line|
  			s[i] = line
			i+=1
		end
		f.close
		`rm #{txtName}`

		# puts @@tg.orType
		cgi = CGI.new("html5")
		f =  File.open(name, "w") 
		f.puts cgi.html{
		     		cgi.head{ "\n"+cgi.title{name} } +
		      		cgi.body{ "\n"+
		         		cgi.form{"\n"+
		            		cgi.hr +
		            		cgi.h2 { name.gsub(/.html/,"").upcase+":" } +

		            		cgi.p {"1"} +
		            		cgi.pre {s[0]} + 
		            		cgi.pre {s[1]} + 
		            		cgi.pre {s[2]} + 
		            		cgi.pre {s[3]} + 
		            		cgi.pre {s[4]} + 
		            		cgi.pre {s[5]} + 
		            		cgi.pre {s[6]} + cgi.br+ "____"+
		            		cgi.p {"2"} +
		            		cgi.pre {s[7]} +
		            		cgi.pre {s[8]} +
		            		cgi.pre {s[9]} +
		            		cgi.pre {s[10]} +
		            		cgi.pre {s[11]} + cgi.br+"____"+
		            		cgi.p {"3"} +
		            		cgi.pre {s[12]} +
		            		cgi.pre {s[13]} +
		            		cgi.pre {s[14]} +
		            		cgi.pre {s[15]} +
		            		cgi.pre {s[16]} +
		            		cgi.pre {s[17]} + 
		            		cgi.pre {s[18]} +
		            		cgi.pre {s[19]} +
		            		cgi.pre {s[20]} +cgi.br+"____"+
		            		cgi.p {"4"} +
		            		cgi.pre {s[21]} +
		            		cgi.pre {s[22]} +
		            		cgi.pre {s[23]} +
		            		cgi.pre {s[24]} + 
		            		cgi.pre {s[25]} +
		            		cgi.pre {s[26]} +
		            		cgi.pre {s[27]} +
		            		cgi.pre {s[28]} +	
		            		cgi.pre {s[29]} +cgi.br+"____"+
		            		cgi.p {"5"} +
		            		cgi.pre {s[30]} +
		            		cgi.pre {s[31]} +
		            		cgi.pre {s[32]} +
		            		cgi.pre {s[33]} +
		            		cgi.pre {s[34]} +
		            		cgi.pre {s[35]} +
		            		cgi.pre {s[36]} +
		            		cgi.pre {s[37]} +
		            		cgi.pre {s[38]} +cgi.br+"____"+
		            		cgi.p {"6"} +
		            		cgi.pre {s[39]} +
		            		cgi.pre {s[40]} +
		            		cgi.pre {s[41]} +
		            		cgi.pre {s[42]} +
		            		cgi.pre {s[43]} +
		            		cgi.pre {s[44]} +cgi.br+"____"+
		            		cgi.p {"7"} +
		            		cgi.pre {s[45]} +
		            		cgi.pre {s[46]} +
		            		cgi.pre {s[47]} +
		            		cgi.pre {s[48]} +
		            		cgi.pre {s[49]} +
		            		cgi.pre {s[50]} +
		            		cgi.pre {s[51]} +cgi.br+"____"+
		            		cgi.p {"8"} +
		            		cgi.pre {s[52]} +
		            		cgi.pre {s[53]} +
		            		cgi.pre {s[54]} +
		            		cgi.pre {s[55]} +
		            		cgi.pre {s[56]} +
		            		cgi.pre {s[57]} +
		            		cgi.pre {s[58]} +cgi.br+"____"+
		            		cgi.p {"9"} +
		            		cgi.pre {s[59]} +
		            		cgi.pre {s[60]} +
		            		cgi.pre {s[61]} +
		            		cgi.pre {s[62]} +
		            		cgi.pre {s[63]} +
		            		cgi.pre {s[64]} +
		            		cgi.pre {s[65]} +
		            		cgi.pre {s[66]} +
		            		cgi.pre {s[67]} +
		            		cgi.pre {s[68]} +
		            		cgi.pre {s[69]} +
		            		cgi.pre {s[70]} +cgi.br+"____"+
		            		cgi.p {"10"} +
		            		cgi.pre {s[71]} +
		            		cgi.pre {s[72]} +
		            		cgi.pre {s[73]} +
		            		cgi.pre {s[74]} +
		            		cgi.pre {s[75]} +
		            		cgi.pre {s[76]} +
		            		cgi.pre {s[77]} +
		            		cgi.pre {s[78]} +
		            		cgi.pre {s[79]} +
		            		cgi.pre {s[80]} +
		            		cgi.pre {s[81]} +
		            		cgi.pre {s[82]} +
		            		cgi.pre {s[83]} +
		            		cgi.pre {s[84]} +
		            		cgi.pre {s[85]} +
		            		cgi.pre {s[86]} +
		            		cgi.pre {s[87]} +
		            		cgi.pre {s[88]} +
		            		cgi.pre {s[89]} +cgi.br+"____"+
		            		cgi.p {"11"} +
		            		cgi.pre {s[90]} +
		            		cgi.pre {s[91]} +
		            		cgi.pre {s[92]} +
		            		cgi.pre {s[93]} +
		            		cgi.pre {s[94]} +
		            		cgi.pre {s[95]} +cgi.br+"____"+
		            		cgi.p {"12"} +
		            		cgi.pre {s[96]} +
		            		cgi.pre {s[97]} +
		            		cgi.pre {s[98]} +
		            		cgi.pre {s[99]} +
		            		cgi.pre {s[100]} +
		            		cgi.pre {s[101]} +
		            		cgi.pre {"\n"} +
		            		cgi.hr

		         		}
		      		}
		  		}
		
	end
end

