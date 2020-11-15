require 'diff_matcher'

module DiffMatcher
  module CLI
    def self.diff(expected, actual, opts={})
      # TODO maybe parse opts from command line instead of ENV vars...
      diff_opts = {
        color_enabled: true,
        ignore_additional: ENV['IGNORE_ADDITIONAL'],
        quiet: !ENV['VERBOSE']
      }

      if (diff_string = DiffMatcher.difference(expected, actual, diff_opts))
        puts diff_string
        exit 1
      end
    end
  end
end
