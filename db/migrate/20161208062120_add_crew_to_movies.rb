class AddCrewToMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :cast, :string
    add_column :movies, :story, :string
    add_column :movies, :screenplay, :string
    add_column :movies, :producer, :string  	
    add_column :movies, :lyricists, :string
    add_column :movies, :dialogues, :string
    add_column :movies, :music, :string
    add_column :movies, :cinematography, :string
    add_column :movies, :language, :string
    add_column :movies, :genre, :string
    add_column :movies, :country, :string
  end
end
