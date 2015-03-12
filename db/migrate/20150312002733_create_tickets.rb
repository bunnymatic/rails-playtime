class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
