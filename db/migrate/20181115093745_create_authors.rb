class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :age
      t.string :experience
      t.string :books
      t.string :email
      t.string :phNo

      t.time :deleted_at

      t.timestamps
    end
  end
end
