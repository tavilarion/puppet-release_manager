module ReleaseManager
  module ComponentsDiff
    class RequestObject
      attr_reader :branch, :type

      def initialize(args)
        @branch = args[:branch]
        @type   = args[:type]
      end
    end
  end
end