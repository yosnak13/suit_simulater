class CreateHopeSuits < ActiveRecord::Migration[5.1]
  def change
    create_table :hope_suits do |t|
      t.string :suit_color
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
