class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :yob
      t.integer :is_alive

      t.timestamps
    end
  end
end
