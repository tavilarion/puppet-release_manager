module ReleaseManager
  module ComponentsDiff
    module Builders
      class CLIBuilder
        def self.build(args)
          ComponentsDiff::RequestObject.new(
            branch: args[0],
            type:   args[1] || 'z'
          )
        end
      end
    end
  end
end
