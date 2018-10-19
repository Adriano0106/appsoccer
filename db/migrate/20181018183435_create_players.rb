class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :birth
      t.references :clube, foreign_key: true
      t.integer :trophy

      t.timestamps
    end
  end
end
