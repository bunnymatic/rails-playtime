# == Schema Information
#
# Table name: companies
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Company < ApplicationRecord

  has_many :fund_companies, foreign_key: :container_company_id, inverse_of: :container_company
  has_many :companies_in_fund, through: :fund_companies, source: :company_in_fund

end
