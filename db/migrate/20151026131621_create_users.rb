class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :passsword_digest

      t.timestamps null: false
    end
    add_index :users, :email
  end
end
