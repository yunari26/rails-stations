class DropTableMovies < ActiveRecord::Migration[6.1]
  def change
    drop_table :movies
  end
end
