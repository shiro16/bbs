# coding: utf-8
require 'test_helper'

class BbsThreadDecoratorTest < ActiveSupport::TestCase
  def setup
    @bbs_thread = BbsThread.new.extend BbsThreadDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
