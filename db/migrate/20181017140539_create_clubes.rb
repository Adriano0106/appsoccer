class CreateClubes < ActiveRecord::Migration[5.2]
  def change
    create_table :clubes do |t|
      t.string :name
      t.integer :birth
      t.references :campeonato, foreign_key: true

      t.timestamps
    end
  end
end
