class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :detail
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
