class CreateIrisplants < ActiveRecord::Migration
  def change
    create_table :irisplants do |t|
      t.string :name
      t.integer :region
      t.integer :year
      t.string :image_url
      t.string :iristype
      t.string :hybridizer

      t.timestamps
    end
  end
end
