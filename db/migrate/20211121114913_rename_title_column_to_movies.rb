class RenameTitleColumnToMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :title, :name
  end
end
