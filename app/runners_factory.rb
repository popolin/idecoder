class RunFactory

  TYPES = {
      html: HTMLParser,
      javascript: JAVASCRIPTParser,
      ruby: RubyParser
  }

  def self.list_types
    TYPES.keys
  end

  def self.for(mode)
    type_c = mode && TYPES[mode.to_sym]
    if type_c.nil?
      raise "Invalid mode selection"
    else
      return type_c.new
    end
  end

end
