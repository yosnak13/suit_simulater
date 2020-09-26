class CreateHopeShirts < ActiveRecord::Migration[5.1]
  def change
    create_table :hope_shirts do |t|
      t.string :shirt_pattern
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
