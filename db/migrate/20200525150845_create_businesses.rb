class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :location
      t.string :business_type

      t.timestamps
    end
  end
end
