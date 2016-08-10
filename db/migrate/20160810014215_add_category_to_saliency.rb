class AddCategoryToSaliency < ActiveRecord::Migration[5.0]
  def change
    add_column :saliencies, :category, :string
  end
end
