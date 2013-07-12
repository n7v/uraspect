# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :doc do
    name { Faker::HipsterIpsum.phrase }
    file_source "public/porn/hedgehogs.avi"
  end
end
