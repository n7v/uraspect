class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.integer :category_id
      t.string :name
      t.string :file_source

      t.timestamps
    end
  end
end
