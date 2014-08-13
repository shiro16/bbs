# coding: utf-8

FactoryGirl.define do
  #
  # @usage
  #   FactoryGirl.create(:bbs_comment)
  factory :bbs_comment do
    sequence(:body) { |n| Faker::Lorem::characters(10) + "#{n}" }
  end
end
