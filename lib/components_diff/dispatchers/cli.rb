module ReleaseManager
  module ComponentsDiff
    module Dispatchers
      class CLI
        def self.trigger!(args)
          new(args).trigger!
        end

        def initialize(args)
          @args = args
        end

        def trigger!
          action.new(request_object).run
        end

        private

        attr_reader :args

        def request_object
          ComponentsDiff::Builders::CLIBuilder.build(args)
        end

        def action
          ComponentsDiff::DiffAction
        end
      end
    end
  end
end
