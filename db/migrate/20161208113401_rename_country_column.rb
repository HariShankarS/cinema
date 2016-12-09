class RenameCountryColumn < ActiveRecord::Migration
  def change
  	rename_column :movies, :country, :country_code
  end
end
