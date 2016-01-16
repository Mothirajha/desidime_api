$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'desidime_api'

require 'minitest/autorun'
require "minitest/reporters"

Minitest::Reporters.use!(
  Minitest::Reporters::MeanTimeReporter.new,
  ENV,
  Minitest.backtrace_filter
)
