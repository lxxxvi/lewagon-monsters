class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :color
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
