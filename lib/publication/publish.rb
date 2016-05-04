require 'pandoc-ruby'

module Publication
  class Publisher

    def initialize(paths: nil, type: nil, output: nil, formats: [])
      @paths = Dir["#{Dir.pwd}/#{paths}"]
      @type = type
      @output = output
      @formats = formats
      fail "No input files found at #{paths}" if @paths.empty?
      fail "No output format specified" if @formats.empty?
    end

    def publish
      @formats.each do |format|
        PandocRuby.new(@paths, from: @type, output: "#{@output}.#{format}").convert
      end
    end
  end
end
