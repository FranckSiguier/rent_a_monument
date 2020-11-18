class AddAddressColumnToMonuments < ActiveRecord::Migration[6.0]
  def change
    add_column :monuments, :address, :string
  end
end
