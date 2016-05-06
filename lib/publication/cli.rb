require 'thor'
require 'publication'

class Publication::CLI < Thor

  desc 'init', 'Initialize a standard template for the publication'
  def init
  end

  desc 'publish', 'Create a new publication of the desired format'
  method_option :output, type: :string, required: false, banner: 'OUTPUT', desc: 'Name of the output file', aliases: '-o', default: 'output'
  method_option :paths, type: :string, required: false, banner: 'DIR', desc: 'Glob of source directory tree, parsed lexically and recursively', aliases: '-p', default: 'doc/**/*'
  method_option :formats, type: :array, required: false, banner: 'FORMATS', desc: 'Formats to output, space separated', aliases: '-f', default: ['epub', 'epub3', 'pdf', 'html']
  method_option :type, type: :string, required: false, banner: 'FORMAT', desc: 'Type (format) of input files', aliases: '-t', default: 'markdown+yaml_metadata_block+pandoc_title_block'
  method_option :extraopts, type: :string, required: false, banner: 'EXTRA', desc: 'Extra options to pass to pandoc (advanced)', aliases: '-e', default: '--smart --chapters'
  def publish
    opts = options.deep_symbolize_keys
    Publication::Publisher.new(**opts).publish
  end
end
