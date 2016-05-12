module Publication
  module Spellchecker
    extend self

    def check
      files = Dir['doc/**/*'].map { |f| f if File.file?(f) }
      puts `bundle exec mdspell #{files.join(' ')} #{"-c .mdspell.config" if File.exists?('.mdspell.config')}`
    end
  end
end
