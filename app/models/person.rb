# == Schema Information
#
# Table name: people
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
  has_many :person_toys
  has_many :toys, through: :person_toys
end
