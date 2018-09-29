# == Schema Information
#
# Table name: toys
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Toy < ApplicationRecord
  has_many :person_toys
  has_many :people, through: :person_toys
end
