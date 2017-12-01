class RenameSpotsSpotName < ActiveRecord::Migration[5.1]
  def change
    rename_column :spots, :spot_name, :name

  end
end
