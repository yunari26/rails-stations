class AddNotnullYearToMovies < ActiveRecord::Migration[6.1]
  def change
    change_column_null :movies, :year, false
  end
end
