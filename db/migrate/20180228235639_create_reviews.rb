class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.string :author
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
