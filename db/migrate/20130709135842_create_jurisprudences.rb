class CreateJurisprudences < ActiveRecord::Migration
  def change
    create_table :jurisprudences do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
