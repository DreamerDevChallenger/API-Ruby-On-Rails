class CreateMovieLists < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_lists do |t|
      t.integer :movie_rating
      t.string :movie_title
      t.string :movie_description
      t.string :movie_categories
      t.timestamps
    end
  end
end
