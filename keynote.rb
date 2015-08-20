require 'terminfo'

    class Presentation
    	def initialize(slides_file)
    		@array_of_texts = FileReader.new(slides_file).get_slide_text
    	end
    	
    	def display_slides
    		screen_height = TermInfo.screen_height / 2
    		screen_width = TermInfo.screen_width / 2
    		@array_of_texts.each do |text|
    		puts text
    		end
    	end
    end

    class FileReader
    	def initialize(slides_file)
    		@slides_file = slides_file
    	end

    	def get_slide_text
    		IO.read(@slides_file).split("----").map(&:chomp)
    	end
    end

   Presentation.new("keynote.txt").display_slides


 
 


