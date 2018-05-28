#!/usr/bin/env ruby

require_relative '../lib/optional.rb'
require 'test/unit'

class TestQuery < Test::Unit::TestCase
  def testOptional
    str = "Hello"
    assert_equal str.optional().else(3), "Hello"
  end

  def testNil
    null = nil
    assert_equal null.optional().else(3), 3
  end
end
