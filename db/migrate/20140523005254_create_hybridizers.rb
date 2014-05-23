class CreateHybridizers < ActiveRecord::Migration
  def change
    create_table :hybridizers do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
