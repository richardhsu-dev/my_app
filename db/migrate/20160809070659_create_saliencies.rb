class CreateSaliencies < ActiveRecord::Migration[5.0]
  def change
    create_table :saliencies do |t|
      t.string :image

      t.timestamps
    end
  end
end
