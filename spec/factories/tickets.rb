FactoryGirl.define do
  factory :ticket do
    description {Faker::Lorem.words.join ' '}
  end

end
