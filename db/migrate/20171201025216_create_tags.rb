class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name, null: false, limit: 16

      t.timestamps
    end
    add_index :tags, :name, name: "uq_tags_01", unique: true
  end
end
