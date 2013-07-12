FactoryGirl.define do
  factory :doc do
    name    { Faker::HipsterIpsum.phrase }
    sample  File.new(Rails.root + 'spec/fixtures/docs_samples/HedgehogsPorn.doc')
  end
end
