class AddAddressToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :address, :text
  end
end
