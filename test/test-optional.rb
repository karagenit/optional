#!/usr/bin/env ruby

require_relative '../lib/optional.rb'
require 'test/unit'

class TestQuery < Test::Unit::TestCase
  def testOptional
    str = "Hello"
    assert_equal str.optional().else(""), "Hello"
    assert_equal str.optional().length().else(0), 5
  end

  def testNil
    str = nil
    assert_equal str.optional().else(""), ""
    assert_equal str.optional().length().else(0), 0
  end
end
