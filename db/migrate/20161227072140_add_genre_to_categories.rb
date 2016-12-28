class AddGenreToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :genre, :string
  end
end
