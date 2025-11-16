class CreateParties < ActiveRecord::Migration[7.1]
  def change
    create_table :parties do |t|
      t.references :quest, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
