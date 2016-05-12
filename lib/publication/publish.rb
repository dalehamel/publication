require 'ruby-pandoc'

module Publication
  class Publisher

    def initialize(paths: nil, type: nil, output: nil, formats: [], extraopts: nil)
      @paths = Dir["#{Dir.pwd}/#{paths}"].sort
      @type = type
      @output = output
      @formats = formats
      @extraopts = extraopts
      fail "No input files found at #{paths}" if @paths.empty?
      fail "No output format specified" if @formats.empty?
    end

    def publish
      @formats.each do |format|
        RubyPandoc::Converter.new(@paths, from: @type, output: "#{@output}.#{format}", extra: @extraopts).convert
      end
    end
  end
end
