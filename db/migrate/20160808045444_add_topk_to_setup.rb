class AddTopkToSetup < ActiveRecord::Migration[5.0]
  def change
    add_column :setups, :topk, :string
  end
end
