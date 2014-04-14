class CreateFactoids < ActiveRecord::Migration
  def change
    create_table :factoids do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
