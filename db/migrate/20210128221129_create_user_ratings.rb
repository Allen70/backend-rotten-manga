class CreateUserRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_ratings do |t|
      t.integer :rating 
      t.integer :hero_journey
      t.integer :power_fantasy
      t.integer :world_building
      t.timestamps
    end
  end
end
