class RenameImageColumnToMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :image, :image_url
  end
end
