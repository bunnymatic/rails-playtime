# == Schema Information
#
# Table name: person_toys
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  person_id  :bigint(8)
#  toy_id     :bigint(8)
#  updated_at :datetime         not null
#
# Indexes
#
#  index_person_toys_on_person_id  (person_id)
#  index_person_toys_on_toy_id     (toy_id)
#
# Foreign Keys
#
#  fk_rails_...  (person_id => people.id)
#  fk_rails_...  (toy_id => toys.id)
#

FactoryBot.define do
  factory :person_toy do
    person nil
    toy nil
  end
end
