class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.belongs_to :tenant
      t.belongs_to :landlord

      t.timestamps
    end
  end
end
