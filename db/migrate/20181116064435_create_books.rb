class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :bookname
      t.string :description
      t.string :genre
      t.string :author_id
      t.integer :price
      t.time :timestamps
      t.time :deleted_at
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
