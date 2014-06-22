TestGenerator
=============

       
Uses:  -rubygems
       -gem Prawn
       -gem pdf-reader
       -cgi
       
Possible actions to be taken before execute

      - Lack of ruby gems installed 
            $ sudo gem update --system
            $ gem install rubygems-update
            $ sudo update_rubygems
            
      - Lack of Prawn installed
            $ sudo gem install prawn
            
      - Lack of pdf-reader installed:
            $ sudo gem install pdf-reader
            
Execute: $ ruby Main arg

arg: positive integer, specifies number of tests to be generated.

Files: -Main.rb
       -NumberGenerator.rb
       -TestGenerator.rb
       -PdfGenerator.rb
       -HtmlGenerator.rb
       
On execute: Creates arg number of html/pdf tests and html/pdf answers in HtmlTests and PdfTests folders.
       



       
