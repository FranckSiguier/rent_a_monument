class CreateMonuments < ActiveRecord::Migration[6.0]
  def change
    create_table :monuments do |t|
      t.string :name
      t.integer :price_per_night
      t.text :description
      t.float :average_rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
