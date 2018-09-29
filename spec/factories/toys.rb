# == Schema Information
#
# Table name: toys
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :toy do
    name "MyString"
  end
end
