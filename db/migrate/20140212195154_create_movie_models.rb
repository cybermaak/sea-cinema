class CreateMovieModels < ActiveRecord::Migration
  def change
    create_table :movie_models do |t|
      t.string :title
      t.date :releaseDate
      t.string :rating
      t.float :length
      t.text :summary

      t.timestamps
    end
  end
end
