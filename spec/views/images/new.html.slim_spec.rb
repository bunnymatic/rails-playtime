require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      name: "MyString",
      image: nil
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input[name=?]", "image[name]"

      assert_select "input[name=?]", "image[image]"
    end
  end
end
