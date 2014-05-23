class RemoveHybridizerFromIrisplant < ActiveRecord::Migration
  def change
    remove_column :irisplants, :hybridizer, :string
  end
end
