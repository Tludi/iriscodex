class CreateIris < ActiveRecord::Migration
  def change
    create_table :iris do |t|
      t.string :hybridizer
      t.integer :region
      t.string :name
      t.integer :year
      t.string :seedling
      t.string :image_url

      t.timestamps
    end
  end
end
