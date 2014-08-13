# coding: utf-8

FactoryGirl.define do
  #
  # @usage
  #   FactoryGirl.create(:bbs_thread)
  factory :bbs_thread do
    sequence(:title) { |n| Faker::Lorem::characters(10) + "#{n}" }
  end
end
