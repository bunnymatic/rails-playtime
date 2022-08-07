FactoryBot.define do
  factory :image do
    name { "MyString" }
    image { nil }

    trait :with_image do
      image { Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/files/image.png"), "image/png") }
    end
  end
end
