class CreateHopeTies < ActiveRecord::Migration[5.1]
  def change
    create_table :hope_ties do |t|
      t.string :tie_pattern
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
