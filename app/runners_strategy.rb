class RunParser
  require 'execjs'

  def parse(code)
    raise 'Must implement!'
  end
end

###

class RubyParser < RunParser
  def parse(code)
    begin
      eval(code)
    rescue Exception => ex
      raise ex.message
    end
  end
end

###

class HTMLParser < RunParser
  def parse(code)
    code
  end
end

###

class JAVASCRIPTParser < RunParser
  def parse(code)
    ExecJS.eval('"red yellow blue".split(" ")')
  end
end

###

class CodeParser
  attr_reader :code, :parser

  def initialize(code, parser)
    @code = code
    @parser = parser
  end

  def parse
    parser.parse(code)
  end

end
