class AddMangaidToUserRatings < ActiveRecord::Migration[6.1]
  def change
    add_column :user_ratings, :manga_id, :integer
  end
end
