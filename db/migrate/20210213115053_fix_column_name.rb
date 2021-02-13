class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :Longitude, :longitude
  end
end
