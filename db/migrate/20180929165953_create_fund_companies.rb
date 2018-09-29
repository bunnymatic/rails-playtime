class CreateFundCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :fund_companies do |t|
      t.belongs_to :container_company
      t.belongs_to :company_in_fund

      t.timestamps
    end
  end
end
