ActiveAdmin.register Movie do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :image, :title, :trailer, :description, :movie_length, :director, :rating, :cast, :story, :screenplay, :dialogues, :producer, :lyricists, :music, :cinematography, :language, :genre, :country_code, category_ids: [] 

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
    f.input :trailer
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
    f.inputs "Categories" do # Make a panel that holds inputs for Categories
      f.input :categories, as: :check_boxes, collection: Category.all.pluck(:genre, :id) # Use formtastic to output my collection of checkboxes
    end
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
        row :trailer
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
        row :language
        row :country_name
        row :image do
          image_tag(ad.image.url(:thumb))
        end
        # Will display the image on show object page
      end
end


end