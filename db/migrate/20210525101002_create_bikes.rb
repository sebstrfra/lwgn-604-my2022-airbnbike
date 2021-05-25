class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :location
      t.string :picture_link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
