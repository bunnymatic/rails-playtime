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

  has_many :fund_companies, foreign_key: :container_company_id
  has_many :company_funds, foreign_key: :company_in_fund_id, class_name: "FundCompany"

  has_many :companies_in_fund, through: :fund_companies, source: :company_in_fund
  has_many :funds_this_company_is_in, through: :company_funds, source: :container_company

end
