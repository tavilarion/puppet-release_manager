# frozen_string_literal: true

module ReleaseManager
  module ComponentsDiff; end
end

require_relative '../common/components_resolver'
require_relative '../common/cloner'
require_relative 'dispatchers/cli'
require_relative 'builders/cli_builder'
require_relative 'request_object'
require_relative 'diff_action'
require_relative 'presenters/terminal'
require_relative 'diff_generator'
