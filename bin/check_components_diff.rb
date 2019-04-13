#! /usr/bin/ruby
# frozen_string_literal: true

require_relative '../lib/release_manager'
require_relative '../lib/components_diff/components_diff'

unless ARGV[0]
  puts 'Usage: ruby bin/check-components_diff <branch or ref> <release_type>'
  exit 1
end

response = ReleaseManager::ComponentsDiff::Dispatchers::CLI.trigger!(ARGV)
ReleaseManager::ComponentsDiff::Presenters::Terminal.present(response)
