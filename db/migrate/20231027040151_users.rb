class Users < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :photo, null: false
      t.text :bio, null: false
      t.integer :posts_counter, default: 0

      t.timestamps
    end
    
  end
end
