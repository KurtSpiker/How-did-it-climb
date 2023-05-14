class AddSectionNumbersToRoutes < ActiveRecord::Migration[7.0]
  def change
    add_column :gyms, :number_of_sections, :integer, null: false, default: 1
    add_column :routes, :section_number, :integer, null: false, default: 1

    Gym.find_each do |gym|
      gym.number_of_sections = 1
      gym.save
      sleep(0.01)
    end
    Route.find_each do |route|
      route.section_number = 1
      route.save
      sleep(0.01)
    end
  end
end
