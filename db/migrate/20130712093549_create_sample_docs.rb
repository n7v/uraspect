class CreateSampleDocs < ActiveRecord::Migration
  def change
    create_table :sample_docs do |t|
      t.string :category
      t.string :name
      t.string :file_source

      t.timestamps
    end
  end
end
