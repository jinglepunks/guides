class CreateClearanceUsers < ActiveRecord::Migration
  def change
    create_table :users  do |t|
      t.string  :email, null: false
      t.string  :name, null: false, default: ''
      t.integer :age, null: false, default: 1

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
