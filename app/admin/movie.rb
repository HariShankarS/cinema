ActiveAdmin.register Movie do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :image, :title, :description, :movie_length, :director, :rating, :cast, :story, :screenplay, :dialogues, :producer, :lyricists, :music, :cinematography, :language, :genre, :country_code

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.semantic_errors # shows errors on :base
  f.inputs  do        # builds an input field for every attribute
  	f.input :image, :as => :file #, :hint => f.template.image_tag(f.object.t.url(:thumb)) 
  	f.input :title
  	f.input :description
  	f.input :movie_length
  	f.input :director
  	f.input :rating
    f.input :cast
    f.input :story
    f.input :screenplay
    f.input :dialogues
    f.input :producer
    f.input :lyricists
    f.input :music
    f.input :cinematography
    f.input :genre
    f.input :language
    f.country_select :country_code, ["India"]
  end
  f.actions  
end

index do
  id_column
  column :title
  column :rating
  actions
end

show do |ad|
   attributes_table do
        row :title
        row :description
        row :movie_length
        row :director
        row :rating
        row :cast
        row :story
        row :screenplay
        row :dialogues
        row :producer
        row :lyricists
        row :music
        row :cinematography
        row :genre
        row :language
        row :country_name
        row :image do
          image_tag(ad.image.url(:medium))
        end
        # Will display the image on show object page
      end
end


end