class AddOnlineToMonuments < ActiveRecord::Migration[6.0]
  def change
    add_column :monuments, :online, :boolean
  end
end
