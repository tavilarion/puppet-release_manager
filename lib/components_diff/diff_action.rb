module ReleaseManager
  module ComponentsDiff
    class DiffAction
      def initialize(request)
        @request = request
      end

      def run
        # first, initialize environment
        puts 'Running something...'
      end

      private

      attr_reader :request
    end
  end
end
