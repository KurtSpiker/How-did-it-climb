class CreateRoute < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :description
      t.string :grade, null: false
      t.string :colour, null: false
      t.timestamps
    end
  end
end
