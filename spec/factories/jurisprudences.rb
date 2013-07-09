FactoryGirl.define do
  factory :jurisprudence do
    name    { Faker::HipsterIpsum.phrase }
    content { (1..3).map{Faker::HTMLIpsum.p}.join }
  end
end
