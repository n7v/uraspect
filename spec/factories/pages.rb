FactoryGirl.define do
  sequence(:slug_uid) { |n| "#{n}"}

  factory :page do
    content { Faker::HipsterIpsum.paragraphs(3).join(' ') }
    name    { Faker::HipsterIpsum.word }
    slug    { "#{name.parameterize}-#{generate(:slug_uid)}" }
  end
end
