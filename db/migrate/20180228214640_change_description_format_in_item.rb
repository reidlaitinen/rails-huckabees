class ChangeDescriptionFormatInItem < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :desc, :text
  end
end
