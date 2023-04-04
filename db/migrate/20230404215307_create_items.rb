class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.decimal :price
      t.string :description
      t.string :title
      t.string :size
      t.string :clothingType
      t.string :color

      t.timestamps
    end
  end
end
