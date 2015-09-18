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

	def test_max
		assert_equal 5, @m.middles([1, 2, 3, 4, 5])
		assert_equal 12, @m.middles([1, 1, 3, 5, 12])
		assert_equal 9, @m.middles([1, 3, 9, 1, 4, 5])
		assert_equal 4, @m.middles([1, 2, 4, 1, 1, 0, 1])
		
	end

	# def test_luck13
	# 	assert_equal [], @m.middles([])

	# end

end
