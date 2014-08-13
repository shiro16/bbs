# coding: utf-8
module BbsThreadDecorator
  def title_string
    created_at > 12.hour.ago ? "[NEW!]#{title}" : title
  end
end
