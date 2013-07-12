FactoryGirl.define do
  factory :doc do
    name    { Faker::HipsterIpsum.phrase }
    sample  File.new(Rails.root + 'spec/fixtures/docs_samples/StandartRussianProgramm.doc')
  end
end
