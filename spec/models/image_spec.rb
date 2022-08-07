require "rails_helper"

RSpec.describe Image, type: :model do
  it "has an image" do
    image = FactoryBot.create(:image, :with_image)
    expect(image.image).to be true
  end
end
