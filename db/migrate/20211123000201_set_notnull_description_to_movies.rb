class SetNotnullDescriptionToMovies < ActiveRecord::Migration[6.1]
  def change
    change_column_null :movies, :description, false
  end
end
