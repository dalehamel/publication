require 'fileutils'
require 'date'
require 'yaml'

module Publication
  module Setup
    extend self
    TITLE_STUB = <<-eos
---
title: Example Publication Title
subtitle: Example publication subtitle
documentclass: book
toc: true
date: #{Date.today.to_s}

---
eos

    MDSPELL_DEFAULTS = <<-eos
ignored [
  'documentclass',
  'toc'
]
    eos

    def init
      FileUtils.mkdir_p('doc')
      File.write('doc/title.md', TITLE_STUB) unless File.exists?('doc/title.md')
      File.write('.mdspell.config', MDSPELL_DEFAULTS) unless File.exists?('.mdspell.config')
    end
  end
end
