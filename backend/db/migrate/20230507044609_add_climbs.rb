class AddClimbs < ActiveRecord::Migration[7.0]
  def change
    create_table :climbs do |t|
      t.string :comment
      t.integer :attempts
      t.boolean :topped
      t.boolean :zoned
      t.timestamps
    end
    add_reference :climbs, :route, index: true, foreign_key: true, null: false
    add_reference :climbs, :user, index: true, foreign_key: true, null: false
  end
end
