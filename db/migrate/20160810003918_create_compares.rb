class CreateCompares < ActiveRecord::Migration[5.0]
  def change
    create_table :compares do |t|
      t.string :first
      t.string :second
      t.string :topk
      t.string :layer

      t.timestamps
    end
  end
end
