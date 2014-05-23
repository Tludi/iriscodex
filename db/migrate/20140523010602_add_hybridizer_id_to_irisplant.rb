class AddHybridizerIdToIrisplant < ActiveRecord::Migration
  def change
    add_column :irisplants, :hybridizer_id, :integer
  end
end
