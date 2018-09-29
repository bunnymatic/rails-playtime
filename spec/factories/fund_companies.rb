# == Schema Information
#
# Table name: fund_companies
#
#  company_in_fund_id   :bigint(8)
#  container_company_id :bigint(8)
#  created_at           :datetime         not null
#  id                   :bigint(8)        not null, primary key
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_fund_companies_on_company_in_fund_id    (company_in_fund_id)
#  index_fund_companies_on_container_company_id  (container_company_id)
#

FactoryBot.define do
  factory :fund_company do
    
  end
end
