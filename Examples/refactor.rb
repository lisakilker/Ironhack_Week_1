class Refactor
  attr_accessor :text
  def initialize(text, output)
    @text = text
    @output = output
  end

def initalize_write
    if @output == :screen
      puts @text
    elsif @output == :logfile
      IO.write("log.log", @text)

def queue
    elsif @output == :message_queue
      Queue.put(@text)

 def HTTP
    elsif @output == :json_endpoint
      HTTP.post(@text)

def logstash
    elsif @output == :logstash
      Logstash.add(@text)

  def logwatch
    elsif @output == :logwatcher
      LogWatch.new.post(@text)
    end

  end
