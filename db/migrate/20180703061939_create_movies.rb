class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :rate
      t.string :director
      t.string :poster

      t.timestamps null: false
    end
  end
end
