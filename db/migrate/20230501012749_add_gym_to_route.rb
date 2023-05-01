class AddGymToRoute < ActiveRecord::Migration[7.0]
  def change
    add_reference :routes, :gym, null: false, foreign_key: true, index: true
  end
end
