class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :code
      t.string :expiration_date
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
