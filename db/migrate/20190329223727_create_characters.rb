class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :house, foreign_key: true
      t.belongs_to :team, foreign_key: true
      t.belongs_to :position, foreign_key: true

      t.timestamps
    end
  end
end
