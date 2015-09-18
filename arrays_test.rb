require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end

	def test_middles
		assert_equal [1, 2], @m.middles([1, 1, 5], [6, 2, 1])
		assert_equal [5, 5], @m.middles([1, 5, 0], [2, 5, 8])
	end

end
