class CreateSetups < ActiveRecord::Migration[5.0]
  def change
    create_table :setups do |t|
      t.string :image
      t.string :ending

      t.timestamps
    end
  end
end
